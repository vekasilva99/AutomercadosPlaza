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


query = """CREATE TABLE IF NOT EXISTS client (id_client char(10), gender char(1),
                        primary key (id_client));"""
cur = myConnection.cursor()
cur.execute(query)
cur.close()
myConnection.commit()

query = """CREATE TABLE IF NOT EXISTS store (id_store VARCHAR, name VARCHAR NOT NULL, max_capacity INT, openingHour TIME, closingHour TIME,
                        PRIMARY KEY (id_store));"""
cur = myConnection.cursor()
cur.execute(query)
cur.close()
myConnection.commit()

query = """CREATE TABLE IF NOT EXISTS warehouse (id_warehouse VARCHAR, max_capacity INT, id_store VARCHAR,
                        PRIMARY KEY (id_store), FOREIGN KEY(id_store) REFERENCES store);"""
cur = myConnection.cursor()
cur.execute(query)
cur.close()
myConnection.commit()

query = """CREATE TABLE IF NOT EXISTS category (id_category SERIAL, name VARCHAR, 
                        PRIMARY KEY (id_category));"""
cur = myConnection.cursor()
cur.execute(query)
cur.close()
myConnection.commit()

query = """CREATE TABLE IF NOT EXISTS product (id_product SERIAL, id_category int, name VARCHAR,
                        PRIMARY KEY (id_category), FOREIGN KEY(id_category) REFERENCES category);"""
cur = myConnection.cursor()
cur.execute(query)
cur.close()
myConnection.commit()

query = """CREATE TABLE IF NOT EXISTS affiliate (id_client CHAR(10), name VARCHAR, identification VARCHAR(8), points INT, 
                        PRIMARY KEY(id_client), FOREIGN KEY(id_client) REFERENCES client);"""
cur = myConnection.cursor()
cur.execute(query)
cur.close()
myConnection.commit()

query = """CREATE TABLE IF NOT EXISTS employee (id_employee CHAR(10), name VARCHAR, identification VARCHAR(8),  salary NUMERIC(8,2), gender CHAR(1),id_store VARCHAR,
                        PRIMARY KEY (id_employee), FOREIGN KEY(id_store) REFERENCES store);"""
cur = myConnection.cursor()
cur.execute(query)
cur.close()
myConnection.commit()

query = """CREATE TABLE IF NOT EXISTS visit (id_client CHAR(10), id_store VARCHAR, hour TIME, date DATE,  
                        PRIMARY KEY (id_client, date, hour), FOREIGN KEY(id_store) REFERENCES store, FOREIGN KEY(id_client) REFERENCES client);"""
cur = myConnection.cursor()
cur.execute(query)
cur.close()
myConnection.commit()

query = """CREATE TABLE IF NOT EXISTS bank (id_bank SERIAL, name VARCHAR,   
                        PRIMARY KEY (id_bank));"""
cur = myConnection.cursor()
cur.execute(query)
cur.close()
myConnection.commit()

query = """CREATE TABLE IF NOT EXISTS cost (id_product INT, date DATE, cost NUMERIC (8,2),
                        PRIMARY KEY (id_product, date), FOREIGN KEY(id_product) REFERENCES product);"""
cur = myConnection.cursor()
cur.execute(query)
cur.close()
myConnection.commit()

query = """CREATE TABLE IF NOT EXISTS shelf (id_store VARCHAR, id_shelf INT, id_product INT, max_capacity INT,  
                        PRIMARY KEY (id_store,id_shelf), FOREIGN KEY(id_store) REFERENCES store, FOREIGN KEY(id_product) REFERENCES product);"""
cur = myConnection.cursor()
cur.execute(query)
cur.close()
myConnection.commit()

query = """CREATE TABLE IF NOT EXISTS shelf_quantity (id_store VARCHAR, id_shelf SERIAL, quantity INT, hour TIME,date DATE,  
                        PRIMARY KEY (id_store,id_shelf, date, hour), FOREIGN KEY(id_store, id_shelf) REFERENCES shelf(id_store,id_shelf));"""
cur = myConnection.cursor()
cur.execute(query)
cur.close()
myConnection.commit()

query = """CREATE TABLE IF NOT EXISTS bill (id_bill SERIAL, id_client CHAR(10), total_bs NUMERIC(10,2), points INT, hour TIME, date DATE, id_store VARCHAR, id_bank INT,
                        PRIMARY KEY (id_bill), FOREIGN KEY(id_store) REFERENCES store, FOREIGN KEY(id_client) REFERENCES client,FOREIGN KEY(id_bank) REFERENCES bank);"""
cur = myConnection.cursor()
cur.execute(query)
cur.close()
myConnection.commit()

query = """CREATE TABLE IF NOT EXISTS bill (id_bill SERIAL, id_client CHAR(10), total_bs NUMERIC(10,2), points INT, hour TIME, date DATE, id_store VARCHAR, id_bank INT,
                        PRIMARY KEY (id_bill), FOREIGN KEY(id_store) REFERENCES store, FOREIGN KEY(id_client) REFERENCES client,FOREIGN KEY(id_bank) REFERENCES bank);"""
cur = myConnection.cursor()
cur.execute(query)
cur.close()
myConnection.commit()

query = """CREATE TABLE IF NOT EXISTS bill_detail (id_bill INT, id_product INT, price NUMERIC(10,2), quantity INT, 
                        PRIMARY KEY (id_bill,id_product), FOREIGN KEY(id_bill) REFERENCES bill, FOREIGN KEY(id_product) REFERENCES product);"""
cur = myConnection.cursor()
cur.execute(query)
cur.close()
myConnection.commit()

query = """CREATE TABLE IF NOT EXISTS stored_in (id_warehouse VARCHAR, id_product INT,quantity INT, hour TIME, date DATE,
                        PRIMARY KEY (id_warehouse,id_product, date), FOREIGN KEY(id_warehouse) REFERENCES warehouse, FOREIGN KEY(id_product) REFERENCES product);"""
cur = myConnection.cursor()
cur.execute(query)
cur.close()
myConnection.commit()