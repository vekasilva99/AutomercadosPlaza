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



# query="""CREATE TYPE plazas.carritos AS (id_product VARCHAR,name VARCHAR ,quantity VARCHAR, cost VARCHAR)"""
# cur = myConnection.cursor()
# cur.execute(query)
# cur.close()
# myConnection.commit()


query="""CREATE OR REPLACE FUNCTION plazas.Purchase(cart plazas.carritos[], id_cliente varchar, storeID varchar, date varchar, hour varchar, bank VARCHAR)
  RETURNS void AS $$
      DECLARE
      total numeric:=(SELECT SUM(CAST(d.cost as numeric)*CAST(d.quantity as INTEGER)) FROM unnest(cart) as d);
      bill numeric; 
      point numeric:=0;
      BEGIN
        CREATE TABLE IF NOT EXISTS plazas.prueba (id_product varchar, name varchar, quantity integer, id_clientt varchar, storeId varchar, Date date, Hour time, cost numeric, total numeric);
        INSERT INTO plazas.prueba SELECT d.id_product, d.name, CAST(d.quantity AS INTEGER), id_cliente, storeID , CAST(date as date), CAST(hour as time), CAST(d.cost as numeric), total  FROM unnest(cart) as d;
        IF id_cliente IN (SELECT plazas.affiliate.id_client FROM plazas.affiliate) THEN
            SELECT CAST(total*0.1 as INTEGER) INTO point;
        END IF;
        INSERT INTO plazas.bill (id_client, total_bs, points, hour, date, id_store, id_bank ) VALUES(id_cliente, total, point ,  CAST(hour as time),CAST(date as date), storeID, CAST(bank as INTEGER)) RETURNING plazas.bill.id_bill INTO bill;
        INSERT INTO plazas.bill_detail SELECT bill,CAST(d.id_product as INTEGER),CAST(d.cost as numeric),CAST(d.quantity AS INTEGER)  FROM unnest(cart) as d;
       
      END;
  $$
  LANGUAGE plpgsql;

"""
cur = myConnection.cursor()
cur.execute(query)
cur.close()
myConnection.commit()

