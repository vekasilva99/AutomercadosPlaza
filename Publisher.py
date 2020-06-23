import ssl
import sys
import json 
import random
import time
import paho.mqtt.client as mqtt
import paho.mqtt.publish
import numpy as np
import datetime
from datetime import date
import calendar 
import psycopg2 as psycopg2
import pandas as pd


myConnection = psycopg2.connect(host = 'hanno.db.elephantsql.com',
                                user= 'xksqcrbt', password ='w5DXUaA1z2Gcs_6jkxCsEVamHAME15N-',
                                dbname= 'xksqcrbt') 
#Lists to save the data from the database
peopleInStore1=[]
peopleInStore2=[]
clients=[]
clientsIDs=[]
affiliates=[]
affiliatesIDs=[]
products=[]
productsIDs=[]
thermo=[]
visits={}

def getClients(list, list2):
    query="""SELECT id_client,name,identification, gender FROM plazas.client WHERE id_client NOT IN (SELECT id_client FROM plazas.affiliate ) """
    
    df=pd.read_sql_query(query,myConnection)
    for index, row in df.iterrows():
        client={
        'id_client':row["id_client"],
        'name':row["name"],
        'identification':row["identification"],
        'gender':row["gender"]
        }
        id={
        'id_client':row["id_client"]
        }
        list2.append(id)
        list.append(client)

getClients(clients,clientsIDs)

def getAffiliates(list, list2):
    query="""SELECT plazas.client.id_client AS id_client, plazas.client.name AS name, plazas.affiliate.points AS points FROM plazas.affiliate INNER JOIN plazas.client ON plazas.client.id_client=plazas.affiliate.id_client"""
    
    df=pd.read_sql_query(query,myConnection)
    for index, row in df.iterrows():
        affiliate={
        'id_client':row["id_client"],
        'name':row["name"],
        'points':row["points"]
        }
        id={
        'id_client':row["id_client"]
        }
        list2.append(id)

        list.append(affiliate)

getAffiliates(affiliates,affiliatesIDs)

def getProducts(list, list2, currentDate, currentHour):
    query=query="""
WITH todoshelf AS(
    WITH cuentashelf AS(
        SELECT shelf.id_store, shelf.id_shelf, product.id_product, product.name, shelf_quantity.quantity,
        shelf_quantity.date,shelf_quantity.hour
        FROM plazas.product AS product
        INNER JOIN plazas.shelf AS shelf
        ON shelf.id_product=product.id_product
        INNER JOIN plazas.shelf_quantity AS shelf_quantity
        ON shelf.id_shelf=shelf_quantity.id_shelf AND shelf.id_store=shelf_quantity.id_store
        WHERE shelf_quantity.date <= CAST(%s AS DATE)
        GROUP BY product.id_product, shelf.id_store, shelf.id_shelf,shelf_quantity.quantity,
        shelf_quantity.date,shelf_quantity.hour
        ORDER BY shelf.id_store,shelf.id_shelf, product.id_product)
    SELECT
      id_store, id_shelf, id_product, name, quantity, date, hour
    FROM (
      SELECT
        ROW_NUMBER() OVER (PARTITION BY id_store, id_shelf ORDER BY id_store, id_shelf) AS r,
        t.*
      FROM
        cuentashelf t) x
    WHERE
      x.r <= 1),
todocost AS (
    WITH cuentacost AS (
        SELECT cost.id_product, cost.date, cost.cost
        FROM plazas.cost AS cost
        WHERE cost.date <=CAST(%s AS DATE)
        GROUP BY cost.id_product, cost.date, cost.cost
        ORDER BY cost.id_product, cost.date DESC)
    SELECT
      id_product, date, cost
    FROM (
      SELECT
        ROW_NUMBER() OVER (PARTITION BY id_product) AS r,
        t.*
      FROM
        cuentacost t) x
    WHERE
      x.r <= 1)
SELECT ts.id_store AS StoreID, ts.id_shelf AS ShelfID, ts.id_product AS ProductID,
ts.name AS ProductName, ts.quantity AS Quantity, tc.cost AS Cost, ts.date AS Date, ts.hour AS Hour
FROM todoshelf AS ts
INNER JOIN todocost AS tc ON ts.id_product = tc.id_product;
"""
    
    df=pd.read_sql_query(query,myConnection, params=[currentDate, currentDate])
    for index, row in df.iterrows():
        product={
        'id_product':row["productid"],
        'name':row["productname"],
        'id_store':str(row["storeid"]),
        'id_shelf':str(row["shelfid"]),
        'quantity':str(row["quantity"]),
        'cost':str(row["cost"]),
        'date':str(row["date"]),
        'hour':str(row["hour"]),

        }
    
        

        list.append(product)


def getMaxQttyShelf(storeID, shelfID):
    query="""SELECT max_capacity FROM plazas.shelf WHERE id_store=%s AND id_shelf=%s """
    
    df=pd.read_sql_query(query,myConnection, params=[storeID, shelfID])
    for index, row in df.iterrows():
        maxCap=row["max_capacity"]
    return maxCap

def getHourOfVisit(personID, currentDate):
    query="""SELECT hour FROM plazas.visit WHERE id_client=%s AND date=CAST(%s AS DATE) ORDER BY hour DESC LIMIT 1"""
    
    df=pd.read_sql_query(query,myConnection, params=[personID, currentDate])
    for index, row in df.iterrows():
        t=row["hour"]
    return t

def getThermometers(list):
    query="""SELECT id_store,id_thermometer,mintemp, maxtemp FROM plazas.thermometer"""
    
    df=pd.read_sql_query(query,myConnection)
    for index, row in df.iterrows():
        thermometer={
        'id_store':row["id_store"],
        'id_thermometer':row["id_thermometer"],
        'mintemp':row["mintemp"],
        'maxtemp':row["maxtemp"]
        }

        list.append(thermometer)

getThermometers(thermo)

def getDateOfLastVisit():
    query="""SELECT date FROM plazas.visit ORDER BY date DESC LIMIT 1"""
    
    df=pd.read_sql_query(query,myConnection)
    for index, row in df.iterrows():
        d=row["date"]
    return d

last_date=getDateOfLastVisit() #Last day of visit-Add 1 day for the beginning of the simulation

def getQttyStoredIn(storeID, productID):
    query="""SELECT quantity FROM plazas.stored_in WHERE id_warehouse=%s AND id_product=%s ORDER BY date DESC, hour DESC LIMIT 1 """
    
    df=pd.read_sql_query(query,myConnection, params=[storeID, productID])
    for index, row in df.iterrows():
        qtty=row["quantity"]
    return qtty

def getStores(list):
    query="""SELECT plazas.store.id_store AS id_store, plazas.store.name AS name, plazas.store.max_capacity AS max_capacity FROM plazas.store"""
    
    df=pd.read_sql_query(query,myConnection)
    for index, row in df.iterrows():
        store={
        'id_store':row["id_store"],
        'name':row["name"],
        'max_capacity':row["max_capacity"]
        }
       

        list.append(store)

stores=[]
getStores(stores)


def IDGenerators(n):
    range_start=10**(n-1)
    range_end=(10**n)-1
    return (int(np.random.uniform(range_start,range_end)))

def entrance(peopleInStore,client, currentTime,storeID, waitingList):
    person={}
    if((int(np.random.uniform(1,7))!=1) or len(peopleInStore)==0 ): #There is a chance that a person does not enter the store
        enteringStore(peopleInStore,currentTime, storeID, client)
    else:
        leavingStore(peopleInStore, storeID, waitingList,currentTime,person,client)
    
def leavingStore(peopleInStore, storeID, waitingList,currentTime,person, client):
    if(len(peopleInStore)!=0 and len(person)==0):
        print("SOMEONE LEFT THE STORE "+str(storeID))
        peopleInStore.remove(random.choice(peopleInStore))
    if(len(person)!=0):
        print(str(person.get("id_client"))+" LEFT THE STORE "+str(storeID))
        peopleInStore.remove(person)
    if((len(peopleInStore)+1)==2 and waitingList!=0):
        print("ALGUIEN SALIO DE LA LISTA DE ESPERA DE LA TIENDA "+str(storeID))
        waitingList-=1
        enteringStore(peopleInStore,currentTime,storeID, client)
    time.sleep(0.5)

def getJsonData():
    with open('Affiliate.json') as json_file:  
        data = json.load(json_file)
        
    return data

def enteringStore(peopleInStore, currentTime, storeID, client):
    typeVisitor=int(np.random.uniform(1,10))
    datosRandom=getJsonData()
    entry=False
    currentDate=date(currentTime.year,currentTime.month,currentTime.day).isoformat()
    # print(typeVisitor)
    

    while(entry==False):
        if(typeVisitor>6 and len(affiliates)!=0):
            person=random.choice(affiliates)
            if((person in peopleInStore1) or (person in peopleInStore2)):
                typeVisitor=int(np.random.uniform(1,10))
            else:
                print("ESTA ENTRANDO EL AFILIADO "+str(person.get('id_client'))+" A LA TIENDA "+str(storeID))
                payload={
                "id_client":str(person.get('id_client')),
                "id_store":str(storeID),
                "hour":str(currentTime),
                "date":str(currentDate),
                }      
                peopleInStore.append(person)
                visits.update({str(person.get('id_client')):currentTime})
                
                client.publish("Plazas/Entrance/Visit", json.dumps(payload), qos=0)
                entry=True
               
        elif(typeVisitor<5):
            print("ESTA ENTRANDO UN DESCONOCIDO "+"A LA TIENDA "+str(storeID))
            indexD=int(np.random.uniform(0,len(datosRandom))) 
            clientD=datosRandom[indexD]  
            datosRandom.remove(clientD)
            clientID={'id_client':str(IDGenerators(10))}    
             
            while((clientID in clientsIDs) or (clientID in affiliatesIDs)):
                clientID={'id_client':str(IDGenerators(10))}
            person={'id_client':clientID.get('id_client'), 'name':clientD.get('name'),'gender':clientD.get('gender'),'identification':clientD.get('identification')}
            
            payload2={
                "id_client":str(person.get('id_client')),
                "name":str(person.get('name')),
                "gender":str(person.get('gender')),
                "identification":str(person.get('identification')),
                } 
            client.publish("Plazas/Client/New", json.dumps(payload2), qos=0) 
            payload={
                "id_client":str(person.get('id_client')),
                "id_store":str(storeID),
                "hour":str(currentTime),
                "date":str(currentDate),
            } 
            time.sleep(1.5) 
            getClients(clients,clientsIDs)
            if(str(person.get('id_client') in clientsIDs)):
                client.publish("Plazas/Entrance/Visit", json.dumps(payload), qos=0)
                peopleInStore.append(person)
                visits.update({str(person.get('id_client')):currentTime})
                print("DESCONOCIDO ENTRO")
                  
            entry=True
        else:
            person=random.choice(clients)
            if((person in peopleInStore1) or (person in peopleInStore2) or len(clients)==0):
                typeVisitor=int(np.random.uniform(1,10))
            else:
                print("ESTA ENTRANDO EL CLIENTE "+str(person.get('id_client'))+" A LA TIENDA "+str(storeID))
                peopleInStore.append(person)
                payload={
                "id_client":str(person.get('id_client')),
                "id_store":str(storeID),
                "hour":str(currentTime),
                "date":str(currentDate),
                } 
                client.publish("Plazas/Entrance/Visit", json.dumps(payload), qos=0)      
                visits.update({str(person.get('id_client')):currentTime})
                   
                entry=True
                time.sleep(1) 
       
def productsStore(storeID):
    productsInStore=[]
    for x in products:
        if(x.get('id_store')==storeID):
            productsInStore.append(x)
    return productsInStore

def chosenProduct(shelfID, inventory):
    product={}
    for x in inventory:
        if(x.get('id_shelf')==shelfID):
         product=x 
   
    return product  

def productDevolution(cart, client, currentDate, currentTime):
    devolution=False
    while(devolution==False):
        if(int(np.random.uniform(1,10))>9):
            returned=cart[int(np.random.uniform(0,len(cart)-1))]
            cart.remove(returned)
            substractQuantity(returned.get('id_shelf'), returned.get('id_store'), returned.get('quantity'))
            payload={
                "id_shelf":str(shelf),
                "id_store":str(storeID),
                "quantity":str(quantity),
                "quantity_available":str(maxquantity-int(quantity)),
                "currentTime":str(currentTime),
                "currentDate":str(currentDate),
                "max_capacity":str(getMaxQttyShelf(storeID, shelf))
            }
            print("Payload")
            print(payload)
            client.publish("Plazas/Shelf/Devolution", json.dumps(payload), qos=0)  
        else:
            devolution=True
    return cart


    cur = myConnection.cursor()
    cur.execute("INSERT INTO plazas.shelf_quantity VALUES (%s,%s,(SELECT plazas.shelf_quantity.quantity FROM plazas.shelf_quantity WHERE plazas.shelf_quantity.id_store='%s' AND plazas.shelf_quantity.id_shelf=%s AND plazas.shelf_quantity.date<=CAST('%s' AS DATE) ORDER BY plazas.shelf_quantity.date DESC,plazas.shelf_quantity.hour DESC LIMIT 1)-CAST(%s AS integer),CAST('%s' AS TIME),CAST('%s' AS DATE))"%(str(storeID),shelfID,str(storeID),shelfID,currentDate,quantity,currentTime,currentDate))
    cur.close()
    myConnection.commit()

def restoreQuantity(shelfID, storeID, quantity):
    cur = myConnection.cursor()
    cur.execute("INSERT INTO plazas.shelf_quantity VALUES (%s,%s,(SELECT plazas.shelf_quantity.quantity FROM plazas.shelf_quantity WHERE plazas.shelf_quantity.id_store='%s' AND plazas.shelf_quantity.id_shelf=%s AND plazas.shelf_quantity.date<=CAST('%s' AS DATE) ORDER BY plazas.shelf_quantity.date DESC,plazas.shelf_quantity.hour DESC LIMIT 1)+CAST(%s AS integer),CAST('%s' AS TIME),CAST('%s' AS DATE))"%(str(storeID),shelfID,str(storeID),shelfID,currentDate,quantity,currentTime,currentDate))
    cur.close()
    myConnection.commit()

def takeProduct(person, storeID, currentTime, client, currentDate):
    
    buying=True
    cart=[]
    
    prueba=[]
    while(buying==True):
        getProducts(products,productsIDs, currentDate, currentTime)
        
        inventory=productsStore(storeID)
        if(len(inventory)==0):
                buying=False 
        if(int(np.random.uniform(1,10))<8):
            producto={}
            while(producto=={} and len(inventory)!=0):
                shelf=str(int(np.random.uniform(1,len(inventory))))
                producto=chosenProduct(shelf,inventory)
                
            if(int(producto.get('quantity'))>0):
                maxquantity=int(producto.get('quantity'))
                porcentage=int(np.random.uniform(1,100))/100
                quantity=str(int(porcentage*maxquantity))
                payload={
                    "id_shelf":str(shelf),
                    "id_store":str(storeID),
                    "id_product":str(producto.get("id_product")),
                    "stored_in":str(getQttyStoredIn(str(storeID), int(producto.get("id_product")))),
                    "quantity":str(quantity),
                    "quantity_available":str(maxquantity-int(quantity)),
                    "currentTime":str(currentTime),
                    "currentDate":str(currentTime),
                    "max_capacity":str(getMaxQttyShelf(storeID, shelf))
                }
                client.publish("Plazas/Shelf/Substract", json.dumps(payload), qos=0)  
                inventory.remove(producto)
                item=(str(producto.get('id_product')),producto.get('name'),str(quantity), producto.get('cost'))
                cart.append(item)
      
  
                 
        else:
            buying=False
  
    return cart

def temperature(currentDate, currentTime, thermometer,client):
    payload={
            "id_store":str(thermometer.get("id_store")),
            "id_thermometer":str(thermometer.get("id_thermometer")),
            "currentTemp":str(int(np.random.uniform(0,30))),
            "maxtemp":str(thermometer.get("maxtemp")),
            "mintemp":str(thermometer.get("mintemp")),
            "currentTime":str(currentTime),
            "currentDate":str(currentDate)
            }
    client.publish("Plazas/Thermometer/Temperature", json.dumps(payload), qos=0) 
    
def main():
    host = "broker.hivemq.com"
    client = paho.mqtt.client.Client("Publicador", False)
    client.qos = 0
    client.connect(host=host)

    currentTime=datetime.datetime(last_date.year,last_date.month,last_date.day).replace(hour=9, minute=0)+ datetime.timedelta(days=1)
    currentTimePerson=currentTime
    days=(calendar.monthrange(currentTime.year, currentTime.month)[1])-currentTime.day
    waitingLStore1=0
    waitingLStore2=0
    buyingInStore1=[]
    buyingInStore2=[]
    
    

    while(True):
        days=(calendar.monthrange(currentTime.year, currentTime.month)[1])-currentTime.day
        while(days>0):
           
            while(currentTime.hour < 20):
                print('------------------------------') 
                print("CURRENT TIME "+str(currentTime))
                count=1
                currentDate=date(currentTime.year,currentTime.month,currentTime.day)
                for x in thermo:
                    temperature(currentDate, currentTime, x, client)

                if(len(peopleInStore1)==int(stores[0].get("max_capacity")) or len(peopleInStore2)==int(stores[1].get("max_capacity"))):
                    peopleVisiting=0
                else:
                    peopleVisiting=int(np.random.uniform(1,250))
                    # peopleVisiting=20
                
                while(count <= peopleVisiting):
                    currentTime = currentTime.replace(minute=0) + datetime.timedelta(minutes=int(np.random.uniform(1,45)))
                    storeID=int(np.random.uniform(1,3))
                    print('------------------------------') 
                    print("INDIVIDUO "+str(count))
                    if(storeID==1 and len(peopleInStore1)<int(stores[0].get("max_capacity"))):
                        entrance(peopleInStore1,client, currentTime,storeID, waitingLStore1)
                        time.sleep(0.5)
                    elif(storeID==2 and len(peopleInStore2)<int(stores[1].get("max_capacity"))):
                        entrance(peopleInStore2,client, currentTime,storeID, waitingLStore2)
                        time.sleep(0.5)
                    elif(storeID==1 and len(peopleInStore1)==int(stores[0].get("max_capacity"))):
                        waitingLStore1=waitingLStore1+1
                        time.sleep(0.5)
                        print("ENTRE ESPERA 1 "+str(waitingLStore1))
                    elif(storeID==2 and len(peopleInStore2)==int(stores[1].get("max_capacity"))):
                        waitingLStore2=waitingLStore2+1
                        time.sleep(0.5)
                        print("ENTRE ESPERA 2 "+str(waitingLStore2))
                    count+=1
                print('------------------------------') 
                print("DAYS "+str(days))
                print("In Store 1")
                print(len(peopleInStore1))
                print(peopleInStore1)
                print("In Store 2")
                print(len(peopleInStore2))
                print(peopleInStore2)
                print("ESPERA 1 "+str(waitingLStore1))
                print("ESPERA 2 "+str(waitingLStore2))
                peopleBuying=int(np.random.uniform(1,len(peopleInStore1)+len(peopleInStore2)))
                print('------------------------------') 
                print("PEOPLE IN STORE 1: "+ str(len(peopleInStore1))+" PEOPLE IN STORE 2: "+str(len(peopleInStore2))+" SUM: "+str(len(peopleInStore1)+len(peopleInStore2)))
                print("PEOPLE BUYING "+str(peopleBuying))
                count2=1
                while(count2<=peopleBuying):
                    
                    print('------------------------------') 
                    print("BUYER "+str(count2))
                    count2=count2+1
                    store=int(np.random.uniform(1,3))
                    person={}
                    getClients(clients,clientsIDs)
                    if(store==1 and len(peopleInStore1)!=0):
                        person=random.choice(peopleInStore1)
                        time.sleep(1)
    
                    elif(store==2 and len(peopleInStore2)!=0):
                        person=random.choice(peopleInStore2)
                        time.sleep(1)
                    personId={'id_client':str(person.get('id_client'))}

                    if(len(person)!=0 and personId in clientsIDs):
                        if(person.get('id_client') in visits):
                            currentTime = currentTime.replace(minute=0) + datetime.timedelta(minutes=int(np.random.uniform(visits[person.get('id_client')].minute,59)))
                        carrito=takeProduct(person, str(store),currentTime,client,date(currentTime.year,currentTime.month,currentTime.day).isoformat())
                        if(len(carrito)!=0 and len(person)!=0):
                            payload={
                            "cart":str(carrito),
                            "id_client":str(person.get("id_client")),
                            "id_store":str(store),
                            "currentTime":str(currentTime),
                            "currentDate":str(currentTime),
                            "bank":str(int(np.random.uniform(1,4)))
                            }
                            print('------------------------------') 
                            print("BILL "+"HOUR "+str(currentTime))
                            print(payload)
                            client.publish("Plazas/Purchase/Bill", json.dumps(payload), qos=0)
                            print("PERSON")
                            print(person)
                            print("STORE")
                            print(store) 
                                           
                        if(store==1):
                            
                            leavingStore(peopleInStore1, str(store), waitingLStore1,currentTime,person,client)
                            time.sleep(0.9)
                            
                        elif(store==2):
                            
                            leavingStore(peopleInStore2, str(store), waitingLStore2,currentTime,person,client)
                            time.sleep(0.9)
                    if(person.get('id_client') in visits):
                        visits.pop(person.get('id_client'))        
                    person={}
                if(currentTime.hour ==21):
                    waitingLStore2=0
                    waitingLStore1=0
                    while(len(peopleInStore1)+len(peopleInStore2)>0):
                        if(len(peopleInStore1)>0):
                            leavingStore(peopleInStore1, '1', waitingLStore1,currentTime,person,client)                           
                        if(len(peopleInStore2)>0):
                            leavingStore(peopleInStore2, '2', waitingLStore2,currentTime,person,client)
                            
                    
                                               
                currentTime = currentTime.replace(minute=0) + datetime.timedelta(hours=1)
            currentTime = currentTime.replace(hour=9,minute=0) + datetime.timedelta(days=1)
            days-=1
                
                




if __name__ == "__main__":
    main()
