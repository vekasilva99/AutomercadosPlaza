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


def main():	
    client = paho.mqtt.client.Client(client_id='Almacen',clean_session=False)
    client.on_connect = on_connect
    client.message_callback_add('Plazas/Restock/#', on_message_R)
    client.connect(host="broker.hivemq.com") 
    client.loop_forever()

main()