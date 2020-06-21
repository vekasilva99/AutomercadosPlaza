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

print("HOLA")
myConnection = psycopg2.connect(host = 'hanno.db.elephantsql.com',
                                user= 'xksqcrbt', password ='w5DXUaA1z2Gcs_6jkxCsEVamHAME15N-',
                                dbname= 'xksqcrbt') 


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


clients=[]
clientsIDs=[]
getClients(clients,clientsIDs)
# print("CLIENTES")
# print(clientsIDs)

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

affiliates=[]
affiliatesIDs=[]
getAffiliates(affiliates,affiliatesIDs)
# print("AFILIADOS")
# print(affiliates)


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


currentTime = datetime.datetime.now().replace(hour=9, minute=0)
currentDate=date(currentTime.year,currentTime.month,currentTime.day)

products=[]
productsIDs=[]
getProducts(products,productsIDs, currentDate, '17:00:00')
# print(products)

def getMaxQttyShelf(storeID, shelfID):
    query="""SELECT max_capacity FROM plazas.shelf WHERE id_store=%s AND id_shelf=%s """
    
    df=pd.read_sql_query(query,myConnection, params=[storeID, shelfID])
    for index, row in df.iterrows():
        maxCap=row["max_capacity"]
    return maxCap



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
peopleInStore1=[]
peopleInStore2=[]


def IDGenerators(n):
    range_start=10**(n-1)
    range_end=(10**n)-1
    return (int(np.random.uniform(range_start,range_end)))

def entrance(peopleInStore,client, currentTime,storeID, waitingList):
    
    if((int(np.random.uniform(1,3))!=1) or len(peopleInStore)==0 ):
        print("Entering")
        print(storeID)
        enteringStore(peopleInStore,currentTime, storeID, client)
    else:
        print("Leaving")
        print(storeID)
        leavingStore(peopleInStore, storeID, waitingList,currentTime)
    
def leavingStore(peopleInStore, storeID, waitingList,currentTime):
    if(len(peopleInStore)!=0):
        peopleInStore.remove(random.choice(peopleInStore))
    if((len(peopleInStore)+1)==2 and len(waitingList)!=0):
        print("Sale de la Waiting")
        waitingList-=1
        enteringStore(peopleInStore,currentTime)

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
                print("Afiliado")
                payload={
                "id_client":str(person.get('id_client')),
                "id_store":str(storeID),
                "hour":str(currentTime),
                "date":str(currentDate),
                }      
                peopleInStore.append(person)
                entry=True
        elif(typeVisitor<5):
            print("Desconocido")
            indexD=int(np.random.uniform(0,len(datosRandom))) 
            clientD=datosRandom[indexD]  
            datosRandom.remove(clientD)
            clientID={'id_client':str(IDGenerators(10))}      
            while((clientID in clientsIDs) or (clientID in affiliatesIDs)):
                clientID={'id_client':str(IDGenerators(10))}
            person={'id_client':clientID.get('id_client'), 'name':clientD.get('name'),'gender':clientD.get('gender'),'identification':clientD.get('identification')}
            peopleInStore.append(person)
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
            entry=True
        else:
            person=random.choice(clients)
            if((person in peopleInStore1) or (person in peopleInStore2) or len(clients)==0):
                typeVisitor=int(np.random.uniform(1,10))
            else:
                print("Cliente")
                peopleInStore.append(person)
                payload={
                "id_client":str(person.get('id_client')),
                "id_store":str(storeID),
                "hour":str(currentTime),
                "date":str(currentDate),
                }          
                entry=True
    client.publish("Plazas/Entrance/Visit", json.dumps(payload), qos=0)
          
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

def queryFunction(cart, id_cliente, store, date, hour, bank):
    print(str(cart).strip('[]'))
    print(type(id_cliente))
    cur = myConnection.cursor()
    cur.execute("SELECT plazas.Purchase(array[%s]::plazas.carritos[],%s::text,%s::text,%s::text,%s::text,%s::text);"% (str(cart).strip('[]'),id_cliente, store, date, hour, bank))
    cur.close()
    myConnection.commit()

def substractQuantity(shelfID, storeID, quantity,currentTime, currentDate):

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
    inventory=productsStore(storeID)
    prueba=[]
    while(buying==True):
        print("ESTA EN LA TIENDA "+storeID)
        if(len(inventory)==0):
                buying=False 
        if(int(np.random.uniform(1,10))<8):
            print("Comprar")
            producto={}
            while(producto=={} and len(inventory)!=0):
                shelf=str(int(np.random.uniform(1,len(inventory))))
                producto=chosenProduct(shelf,inventory)
            maxquantity=int(producto.get('quantity'))
            porcentage=int(np.random.uniform(1,100))/100
            quantity=str(int(porcentage*maxquantity))
        
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
            client.publish("Plazas/Shelf/Substract", json.dumps(payload), qos=0)  
            

            inventory.remove(producto)
           
            #IOT
            item=(str(producto.get('id_product')),producto.get('name'),str(quantity), producto.get('cost'))
            print(item)
            cart.append(item)
      
            
            # data= list(cart.items())
            # print(data)
            # cartArray= np.array(data)
            # print(cartArray[0][0])     
                 
        else:
            buying=False
  
    return cart

def main():
    host = "broker.hivemq.com"
    client = paho.mqtt.client.Client("Publicador", False)
    client.qos = 0
    client.connect(host=host)

    currentTime = datetime.datetime.now().replace(hour=7, minute=0)
    days=(calendar.monthrange(currentTime.year, currentTime.month)[1])-currentTime.day
    waitingLStore1=0
    waitingLStore2=0
    buyingInStore1=[]
    buyingInStore2=[]

    while(currentTime.month!=7):
        days=(calendar.monthrange(currentTime.year, currentTime.month)[1])-currentTime.day
        while(days>0):
            print("Current Time")
            print(currentTime)
            while(currentTime.hour < 20):
                count=1
                 # peopleVisiting=int(np.random.uniform(1,250))
                peopleVisiting=20
                while(count <= peopleVisiting):
                
                    storeID=int(np.random.uniform(1,3))
                    print("Cuenta"+str(count))
                    if(storeID==1 and len(peopleInStore1)<2):
                        entrance(peopleInStore1,client, currentTime,storeID, waitingLStore1)
                        time.sleep(0.5)
                    elif(storeID==2 and len(peopleInStore2)<2):
                        entrance(peopleInStore2,client, currentTime,storeID, waitingLStore2)
                        time.sleep(0.5)
                    elif(storeID==1 and len(peopleInStore1)==2):
                        print("Entre Espera 1"+str(waitingLStore1))
                        waitingLStore1=waitingLStore1+1
                        time.sleep(0.5)
                        print("Entre Espera 1"+str(waitingLStore1))
                    elif(storeID==2 and len(peopleInStore2)==2):
                        print("Entre Espera 2"+str(waitingLStore2))
                        waitingLStore2=waitingLStore2+1
                        time.sleep(0.5)
                        print("Entre Espera 2"+str(waitingLStore2))
                    count+=1
                print(currentTime.day)
                print("In Store 1")
                print(len(peopleInStore1))
                print(peopleInStore1)
                print("In Store 2")
                print(len(peopleInStore2))
                print(peopleInStore2)
                print("ESPERA 1")
                print(waitingLStore1)
                print("ESPERA 2")
                print(waitingLStore2)
                peopleBuying=int(np.random.uniform(1,len(peopleInStore1)+len(peopleInStore2)))
                print("People Buying "+str(peopleBuying))
                count2=1
                while(count2<=peopleBuying):
                    print("Buyer "+str(count2))
                    count2=count2+1
                    store=int(np.random.uniform(1,3))
                    if(store==1 and len(peopleInStore1)!=0):
                        person=peopleInStore1[int(np.random.uniform(0,len(peopleInStore1)))]
                        time.sleep(0.5)
    
                    elif(store==2 and len(peopleInStore2)!=0):
                        person=peopleInStore1[int(np.random.uniform(0,len(peopleInStore1)))]
                    currentTime = currentTime + datetime.timedelta(seconds=1)
                    carrito=takeProduct(affiliates[0], '1',currentTime,client,date(currentTime.year,currentTime.month,currentTime.day).isoformat())
                    payload={
                    "cart":str(carrito),
                    "id_client":str(person.get("id_client")),
                    "id_store":str(store),
                    "currentTime":str(currentTime),
                    "currentDate":str(currentDate),
                    "bank":str(int(np.random.uniform(1,4)))
                    }
                    print("Payload")
                    print(payload)
                    client.publish("Plazas/Purchase/Bill", json.dumps(payload), qos=0)     



                currentTime = currentTime + datetime.timedelta(hours=1)
            days-=1
                
                


# currentTime = datetime.datetime.now().replace(hour=9, minute=0)
# currentDate=date(currentTime.year,currentTime.month,currentTime.day).isoformat()
# host = "broker.hivemq.com"
# client = paho.mqtt.client.Client("Publicador", False)
# client.qos = 0
# client.connect(host=host)


main()
# count=1
# # peopleVisiting=int(np.random.uniform(1,250))
# peopleVisiting=20
# waitingLStore1=0
# waitingLStore2=0

# print(peopleVisiting)
# while(count <= 20):
   
#     storeID=int(np.random.uniform(1,3))
#     print("Cuenta"+str(count))
#     if(storeID==1 and len(peopleInStore1)<2):
#         entrance(peopleInStore1,client, currentTime,storeID, waitingLStore1)
#     elif(storeID==2 and len(peopleInStore2)<2):
#         entrance(peopleInStore2,client, currentTime,storeID, waitingLStore2)
#     elif(storeID==1 and len(peopleInStore1)==2):
#         print("Entre Espera 1"+str(waitingLStore1))
#         waitingLStore1=waitingLStore1+1
#         print("Entre Espera 1"+str(waitingLStore1))
#     elif(storeID==2 and len(peopleInStore2)==2):
#         print("Entre Espera 2"+str(waitingLStore2))
#         waitingLStore2=waitingLStore2+1
#         print("Entre Espera 2"+str(waitingLStore2))
        


#     count+=1


# substractQuantity('1', '1', '1',str(currentTime),str(date))



# substractQuantity(shelfID, storeID, quantity,currentHour):

# storeID=int(np.random.uniform(1,2))
# if(storeID==1):
#     entrance(peopleInStore1)
# else:
#     entrance(peopleInStore2)

# carrito=takeProduct(affiliates[0], '1')


# if(len(carrito)!=0):
#     print(carrito)
#     queryFunction(carrito,'1092087244','1','20200602','130000','1')
