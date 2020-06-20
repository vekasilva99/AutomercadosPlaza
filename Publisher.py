import ssl
import sys
import json 
import random
import time
import paho.mqtt.client as mqtt
import paho.mqtt.publish
import numpy as np
import datetime
import psycopg2 as psycopg2
import pandas as pd


myConnection = psycopg2.connect(host = 'hanno.db.elephantsql.com',
                                user= 'xksqcrbt', password ='w5DXUaA1z2Gcs_6jkxCsEVamHAME15N-',
                                dbname= 'xksqcrbt') 


def getClients(list, list2):
    query="""SELECT id_client, gender FROM plazas.client WHERE id_client NOT IN (SELECT id_client FROM plazas.affiliate ) """
    
    df=pd.read_sql_query(query,myConnection)
    for index, row in df.iterrows():
        client={
        'id_client':row["id_client"],
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
print(clientsIDs)

def getAffiliates(list, list2):
    query="""SELECT id_client, name, points FROM plazas.affiliate """
    
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
print(affiliatesIDs)

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
        WHERE shelf_quantity.date <= '2020-06-21'
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
        WHERE cost.date <= '2020-06-21'
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
    
    df=pd.read_sql_query(query,myConnection,params=[currentDate])
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



products=[]
productsIDs=[]
getProducts(products,productsIDs, '2020-06-02', '17:00:00')
print(products)

peopleInStore1=[]
peopleInStore2=[]


def IDGenerators(n):
    range_start=10**(n-1)
    range_end=(10**n)-1
    return (int(np.random.uniform(range_start,range_end)))

def entrance(peopleInStore):
    
    if((int(np.random.uniform(1,3))!=1) or len(peopleInStore)==0 ):
        print("Entering")
        enteringStore(peopleInStore)
    else:
        print("Leaving")

def leavingStore(peopleInStore):
    if(len(peopleInStore)!=0):
        peopleInStore.remove(random.choice(peopleInStore))


def enteringStore(peopleInStore):
    typeVisitor=int(np.random.uniform(1,10))
    entry=False
    print(typeVisitor)

    while(entry==False):
        if(typeVisitor>6 and len(affiliates)!=0):
            person=random.choice(affiliates)
            if((person in peopleInStore1) or (person in peopleInStore2)):
                typeVisitor=int(np.random.uniform(1,10))
            else:
                print("Afiliado")
                # payload={
                # "id_client":person.get('id_client'),
                # "id_store":storeID,
                # "hour":currentTime,
                # "date":currentDate,
                # }      
                peopleInStore.append(person)
                entry=True
        elif(typeVisitor<5):
            print("Desconocido")
            if(int(np.random.uniform(1,2))==1):
                gender='F'
            else:
                gender='M'    
            clientID={'id_client':str(IDGenerators(10))}      
            while((clientID in clientsIDs) or (clientID in affiliatesIDs)):
                clientID={'id_client':str(IDGenerators(10))}
            person={'id_client':clientID.get('id_client'), 'gender':gender}
            peopleInStore.append(person)
            # payload={
            #     "id_client":clientID.get('id_client'),
            #     "gender":gender,
            #     "id_store":storeID,
            #     "hour":currentTime,
            #     "date":currentDate,
            # }      
            entry=True
        else:
            person=random.choice(clients)
            if((person in peopleInStore1) or (person in peopleInStore2) or len(clients)==0):
                typeVisitor=int(np.random.uniform(1,10))
            else:
                print("Cliente")
                peopleInStore.append(person)
                # payload={
                # "id_client":person.get('id_client')
                # "id_store":storeID,
                # "hour":currentTime,
                # "date":currentDate,
                # }      
                entry=True
        
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

def productDevolution(cart):
    devolution=False
    while(devolution==False):
        if(int(np.random.uniform(1,10))>9):
            returned=cart[int(np.random.uniform(0,len(cart)-1))]
            cart.remove(returned)
            #IOT AGREGAR LA CANTIDAD AGAIN
        else:
            devolution=True
    return cart

def queryFunction(cart, id_cliente, store, date, hour, bank):
    print("VAMOIS")
    print(str(cart).strip('[]'))
    print(type(id_cliente))
    cur = myConnection.cursor()
    cur.execute("SELECT plazas.Purchase(array[%s]::plazas.carritos[],%s::text,%s::text,%s::text,%s::text,%s::text);"% (str(cart).strip('[]'),id_cliente, store, date, hour, bank))
    cur.close()
    myConnection.commit()

def takeProduct(person, storeID):
    buying=True
    cart=[]
    inventory=productsStore(storeID)
    prueba=[]
    while(buying==True):
        print("Buyinr")
        if(len(inventory)==0):
                buying=False 
        if(int(np.random.uniform(1,10))<8):
            print("Comprar")
            producto={}
            while(producto=={} and len(inventory)!=0):
                shelf=str(int(np.random.uniform(1,len(inventory))))
                producto=chosenProduct(shelf,inventory)
                print("Product")
                print(producto)
            maxquantity=int(producto.get('quantity'))
            porcentage=int(np.random.uniform(1,100))/100
            quantity=str(int(porcentage*maxquantity))
            
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

    

   
    
  






# storeID=int(np.random.uniform(1,2))
# if(storeID==1):
#     entrance(peopleInStore1)
# else:
#     entrance(peopleInStore2)

carrito=takeProduct(affiliates[0], '1')


if(len(carrito)!=0):
    print(carrito)
    queryFunction(carrito,'9058501784','1','20200602','170000','1')
