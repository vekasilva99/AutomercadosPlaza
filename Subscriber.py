import ssl
import sys
import psycopg2 
import pandas as pd
import paho.mqtt.client 
import json
import ast
import time

myConnection = psycopg2.connect(host = 'hanno.db.elephantsql.com',
                                user= 'xksqcrbt', password ='w5DXUaA1z2Gcs_6jkxCsEVamHAME15N-',
                                dbname= 'xksqcrbt') 

def on_connect(client, userdata, flags, rc):    
    print('Conectado (%s)' % client._client_id)
    client.subscribe(topic='Plazas/#', qos = 0) 

def getMaxStores(warehouseID, productId, currentDate):
    query="""SELECT quantity FROM plazas.stored_in WHERE id_warehouse=%s AND id_product=%s AND date<=CAST(%s AS DATE) ORDER BY date DESC,hour DESC LIMIT 1"""
    
    df=pd.read_sql_query(query,myConnection, params=[warehouseID, productId, currentDate])
    for index, row in df.iterrows():
        quantity=row["quantity"]
    return quantity

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
            time.sleep(0.5)

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
        print(type(t["cart"]))
        print('topic: %s' % message.topic)
        cur = myConnection.cursor()
        sql ='''SELECT plazas.Purchase(array[%s]::plazas.carritos[],%s::text,%s::text,%s::text,%s::text,%s::text)'''
        cur.execute(sql, (list(ast.literal_eval(t["cart"])),t["id_client"], t["id_store"], t["currentDate"], t["currentTime"], t["bank"]))
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
            'stored_in':t["stored_in"],
            'id_product':t["id_product"],
            'quantity':str(restock),
            'hour':t["currentTime"],
            'date':t["currentDate"],
            'max_capacity':t["max_capacity"]
        }

        
        if(percent<=20):
            print('20%')
            print(percent)
            print('Max Capacity: '+str(t["max_capacity"])+' Available: '+str(t["quantity_available"])+' Restock: '+str(restock))
            client.publish("Plazas/Restock/Shelf", json.dumps(payload), qos=1)

def on_message_R(client,userdata,message): 
    t = json.loads(message.payload)
    print('------------------------------')  
    if (message.topic=="Plazas/Restock/Shelf") :
        print(t)
        print('topic: %s' % message.topic)
        cur = myConnection.cursor()
        sql = '''INSERT INTO plazas.restock(id_store, id_shelf, id_warehouse, quantity,hour, date)VALUES (%s,  CAST(%s AS INTEGER),%s, CAST(%s AS INTEGER),CAST(%s AS TIME),CAST(%s AS DATE));'''
        cur.execute(sql, (t["id_store"],t["id_shelf"], t["id_warehouse"], t["quantity"],t["hour"],t["date"]))
        myConnection.commit()     
        cur = myConnection.cursor()
        sql = '''INSERT INTO plazas.stored_in(id_warehouse, id_product, quantity,hour, date)VALUES (%s, %s, CAST(CAST(%s AS INTEGER)-CAST(%s AS INTEGER) AS INTEGER),CAST(%s AS TIME)+ interval '3 minutes',CAST(%s AS DATE));'''
        cur.execute(sql, (t["id_warehouse"],t["id_product"],t["stored_in"], t["quantity"],t["hour"],t["date"]))
        myConnection.commit() 
        cur = myConnection.cursor()
        sql ='''INSERT INTO plazas.shelf_quantity VALUES (%s,%s,CAST(%s AS INTEGER),CAST(%s AS TIME) + interval '3 minutes',CAST(%s AS DATE))'''
        cur.execute(sql,(t["id_store"],t["id_shelf"],t["max_capacity"],t["hour"],t["date"]))
        cur.close()
        myConnection.commit()  


    
        payload={
        'id_warehouse':t["id_store"],
        'id_product':t["id_product"],
        'hour':t["hour"],
        'date':t["date"]
        }

        client.publish("Plazas/Warehouse/Restock", json.dumps(payload), qos=1)


def on_message_W(client,userdata,message): 
    t = json.loads(message.payload)
    print('------------------------------')  
    if (message.topic=="Plazas/Warehouse/Restock") :
        print(t)
        print('topic: %s' % message.topic)  
        cur = myConnection.cursor()
        sql = '''INSERT INTO plazas.stored_in(id_warehouse, id_product, quantity,hour, date)VALUES (%s, %s, 160,CAST(%s AS TIME),CAST(%s AS DATE));'''
        cur.execute(sql, (t["id_warehouse"],t["id_product"],t["hour"],t["date"]))
        myConnection.commit()   

def on_message_T(client,userdata,message): 
    t = json.loads(message.payload)
    print('------------------------------')  
    if (message.topic=="Plazas/Thermometer/Temperature") :
        print(t)
        print('topic: %s' % message.topic)  
        cur = myConnection.cursor()
        sql = '''INSERT INTO plazas.ther_register(id_store, id_thermometer, temperature,hour, date)VALUES (CAST(%s AS TEXT), CAST(%s AS TEXT), CAST(%s AS INTEGER),CAST(%s AS TIME),CAST(%s AS DATE));'''
        cur.execute(sql, (t["id_store"],t["id_thermometer"],t["currentTemp"],t["currentTime"],t["currentDate"]))
        myConnection.commit()  

        if(int(t["currentTemp"])<int(t["mintemp"]) or int(t["currentTemp"])>int(t["maxtemp"])):
            alerta="ALERTA. La temperatura del termometro %d de la tienda %d no se encuentra dentro de los parametros"%(int(t["id_thermometer"]),int(t["id_store"]))
            client.publish('Plazas/Temperature/%d/%d'%(int(t["id_thermometer"]),int(t["id_store"])),json.dumps(alerta),qos=0)

def on_message_F(client,userdata,message): 
    t = json.loads(message.payload)
    print('------------------------------')  
    print(t)
    print('topic: %s' % message.topic)  
        

        
        



def main():	
    client = paho.mqtt.client.Client(client_id='Automercado Plaza',clean_session=False)
    client.on_connect = on_connect
    client.message_callback_add('Plazas/Entrance/#', on_message_E)
    client.message_callback_add('Plazas/Client/#', on_message_C)
    client.message_callback_add('Plazas/Shelf/#', on_message_S)
    client.message_callback_add('Plazas/Purchase/#', on_message_P)
    client.message_callback_add('Plazas/Restock/#', on_message_R)
    client.message_callback_add('Plazas/Warehouse/#', on_message_W)
    client.message_callback_add('Plazas/Thermometer/#', on_message_T)
    client.message_callback_add('Plazas/Temperature/#', on_message_F)
    client.connect(host="broker.hivemq.com") 
    client.loop_forever()

if __name__ == "__main__":
    main()