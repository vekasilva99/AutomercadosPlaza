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
        



storeID=int(np.random.uniform(1,2))
if(storeID==1):
    entrance(peopleInStore1)
else:
    entrance(peopleInStore2)

peopleInStore1.append(clients[0])
peopleInStore1.append(clients[1])
peopleInStore1.append(affiliates[0])
peopleInStore1.append(affiliates[1])
peopleInStore1.append(affiliates[2])
print(peopleInStore1)

leavingStore(peopleInStore1)
print("despues")
print(peopleInStore1)

