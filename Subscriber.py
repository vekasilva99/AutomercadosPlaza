import ssl
import sys
import psycopg2 
import pandas as pd
import paho.mqtt.client 
import json

myConnection = psycopg2.connect(host = 'hanno.db.elephantsql.com',
                                user= 'xksqcrbt', password ='w5DXUaA1z2Gcs_6jkxCsEVamHAME15N-',
                                dbname= 'xksqcrbt') 

def on_connect(client, userdata, flags, rc):    
    print('Conectado (%s)' % client._client_id)
    client.subscribe(topic='Plazas/#', qos = 0) 

def on_message_E(client,userdata,message): 
    t = json.loads(message.payload)
    print('------------------------------')  
    if (message.topic=="Plazas/Entrance/Visit") :
            print(t)
            print('topic: %s' % message.topic)
            cur = myConnection.cursor()
            sql = '''INSERT INTO plazas.visit(id_client, id_store, hour, date)VALUES (%s, %s, CAST(%s AS TIME), CAST(%s AS DATE));'''
            cur.execute(sql, (t["id_client"],t["id_store"], t["hour"], t["date"]))
            myConnection.commit()

def on_message_C(client,userdata,message): 
    t = json.loads(message.payload)
    print('------------------------------')  
    if (message.topic=="Plazas/Client/New") :
        print(t)
        print('topic: %s' % message.topic)
        cur = myConnection.cursor()
        sql ='''INSERT INTO plazas.client (id_client,name,gender,identification) VALUES (%s,%s,%s,%s)'''
        cur.execute(sql, (t["id_client"],t["name"], t["gender"], t["identification"]))
        cur.close()
        myConnection.commit()

        
def on_message_P(client,userdata,message):
    t = json.loads(message.payload)
    print('------------------------------')  
    if (message.topic=="Plazas/Purchase/Bill") :
        print(t)
        print('topic: %s' % message.topic)
        cur = myConnection.cursor()
        cur.execute("SELECT plazas.Purchase(array[%s]::plazas.carritos[],%s::text,%s::text,%s::text,%s::text,%s::text);"% (t["cart"].strip('[]'),t["id_client"], t["id_store"], t["currentDate"], t["currentTime"], t["bank"]))
        cur.close()
        myConnection.commit()


def on_message_S(client,userdata,message):
    t = json.loads(message.payload)
    print('------------------------------')  
    if (message.topic=="Plazas/Shelf/Substract"):
        print(t)
        print('topic: %s' % message.topic)
        cur = myConnection.cursor()
        sql ='''INSERT INTO plazas.shelf_quantity VALUES (%s,%s,(SELECT plazas.shelf_quantity.quantity FROM plazas.shelf_quantity WHERE plazas.shelf_quantity.id_store=%s AND plazas.shelf_quantity.id_shelf=%s AND plazas.shelf_quantity.date<=CAST(%s AS DATE) ORDER BY plazas.shelf_quantity.date DESC,plazas.shelf_quantity.hour DESC LIMIT 1)-CAST(%s AS integer),CAST(%s AS TIME),CAST(%s AS DATE))'''
        cur.execute(sql,(t["id_store"],t["id_shelf"],t["id_store"],t["id_shelf"],t["currentDate"],t["quantity"],t["currentTime"],t["currentDate"]))
        cur.close()
        myConnection.commit()

        percent=int((int(t["quantity_available"])/int(t["max_capacity"]))*100)
        restock=int(t["max_capacity"])-int(t["quantity_available"])

        payload={
            'id_store':t["id_store"],
            'id_shelf':t["id_shelf"],
            'id_warehouse':t["id_store"],
            'quantity':t["quantity"],
            'hour':t["currentTime"],
            'date':t["currentDate"]
        }
        if(percent<=20):
            print('20%')
            print(percent)
            print(restock)


def main():	
    client = paho.mqtt.client.Client(client_id='Automercado Plaza',clean_session=False)
    client.on_connect = on_connect
    client.message_callback_add('Plazas/Entrance/#', on_message_E)
    client.message_callback_add('Plazas/Client/#', on_message_C)
    client.message_callback_add('Plazas/Shelf/#', on_message_S)
    client.connect(host="broker.hivemq.com") 
    client.loop_forever()

main()