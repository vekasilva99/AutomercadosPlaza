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

myConnection = psycopg2.connect(host='hanno.db.elephantsql.com',
                                user='xksqcrbt', password='w5DXUaA1z2Gcs_6jkxCsEVamHAME15N-',
                                dbname='xksqcrbt')

# CREATE TABLE client
query = """CREATE TABLE IF NOT EXISTS plazas.client (id_client char(10),name VARCHAR, gender char(1),identification VARCHAR(8),
                        primary key (id_client));"""
cur = myConnection.cursor()
cur.execute(query)
cur.close()
myConnection.commit()

# CREATE TABLE store
query = """CREATE TABLE IF NOT EXISTS plazas.store (id_store VARCHAR, name VARCHAR NOT NULL, max_capacity INT, openingHour TIME, closingHour TIME,
                        PRIMARY KEY (id_store));"""
cur = myConnection.cursor()
cur.execute(query)
cur.close()
myConnection.commit()

# CREATE TABLE warehouse
query = """CREATE TABLE IF NOT EXISTS plazas.warehouse (id_warehouse VARCHAR, max_capacity INT, id_store VARCHAR,
                        PRIMARY KEY (id_store), FOREIGN KEY(id_store) REFERENCES plazas.store);"""
cur = myConnection.cursor()
cur.execute(query)
cur.close()
myConnection.commit()

# CREATE TABLE category
query = """CREATE TABLE IF NOT EXISTS plazas.category (id_category SERIAL, name VARCHAR, 
                        PRIMARY KEY (id_category));"""
cur = myConnection.cursor()
cur.execute(query)
cur.close()
myConnection.commit()

# CREATE TABLE product
query = """CREATE TABLE IF NOT EXISTS plazas.product (id_product SERIAL, id_category int, name VARCHAR,
                        PRIMARY KEY (id_product), FOREIGN KEY(id_category) REFERENCES plazas.category);"""
cur = myConnection.cursor()
cur.execute(query)
cur.close()
myConnection.commit()

# CREATE TABLE affiliate
query = """CREATE TABLE IF NOT EXISTS plazas.affiliate (id_client CHAR(10), points INT, 
                        PRIMARY KEY(id_client), FOREIGN KEY(id_client) REFERENCES plazas.client);"""
cur = myConnection.cursor()
cur.execute(query)
cur.close()
myConnection.commit()

# CREATE TABLE employee
query = """CREATE TABLE IF NOT EXISTS plazas.employee (id_employee CHAR(10), name VARCHAR, identification VARCHAR(8),  salary NUMERIC(10,2), gender CHAR(1),id_store VARCHAR,
                        PRIMARY KEY (id_employee), FOREIGN KEY(id_store) REFERENCES plazas.store);"""
cur = myConnection.cursor()
cur.execute(query)
cur.close()
myConnection.commit()

# CREATE TABLE visit
query = """CREATE TABLE IF NOT EXISTS plazas.visit (id_client CHAR(10), id_store VARCHAR, hour TIME, date DATE,  
                        PRIMARY KEY (id_client, date, hour), FOREIGN KEY(id_store) REFERENCES plazas.store, FOREIGN KEY(id_client) REFERENCES plazas.client);"""
cur = myConnection.cursor()
cur.execute(query)
cur.close()
myConnection.commit()

# CREATE TABLE bank
query = """CREATE TABLE IF NOT EXISTS plazas.bank (id_bank SERIAL, name VARCHAR,   
                        PRIMARY KEY (id_bank));"""
cur = myConnection.cursor()
cur.execute(query)
cur.close()
myConnection.commit()

# CREATE TABLE cost
query = """CREATE TABLE IF NOT EXISTS plazas.cost (id_product INT, date DATE, cost NUMERIC (10,2),
                        PRIMARY KEY (id_product, date), FOREIGN KEY(id_product) REFERENCES plazas.product);"""
cur = myConnection.cursor()
cur.execute(query)
cur.close()
myConnection.commit()

# CREATE TABLE shelf
query = """CREATE TABLE IF NOT EXISTS plazas.shelf (id_store VARCHAR, id_shelf INT, id_product INT, max_capacity INT,  
                        PRIMARY KEY (id_store,id_shelf), FOREIGN KEY(id_store) REFERENCES plazas.store, FOREIGN KEY(id_product) REFERENCES plazas.product);"""
cur = myConnection.cursor()
cur.execute(query)
cur.close()
myConnection.commit()

# CREATE TABLE shelf_quantity
query = """CREATE TABLE IF NOT EXISTS plazas.shelf_quantity (id_store VARCHAR, id_shelf SERIAL, quantity INT, hour TIME,date DATE,  
                        PRIMARY KEY (id_store,id_shelf, date, hour), FOREIGN KEY(id_store, id_shelf) REFERENCES plazas.shelf(id_store,id_shelf));"""
cur = myConnection.cursor()
cur.execute(query)
cur.close()
myConnection.commit()

# CREATE TABLE bill
query = """CREATE TABLE IF NOT EXISTS plazas.bill (id_bill SERIAL, id_client CHAR(10), total_bs NUMERIC(10,2), points INT, hour TIME, date DATE, id_store VARCHAR, id_bank INT,
                        PRIMARY KEY (id_bill), FOREIGN KEY(id_store) REFERENCES plazas.store, FOREIGN KEY(id_client) REFERENCES plazas.client,FOREIGN KEY(id_bank) REFERENCES plazas.bank);"""
cur = myConnection.cursor()
cur.execute(query)
cur.close()
myConnection.commit()

# CREATE TABLE bill_detail
query = """CREATE TABLE IF NOT EXISTS plazas.bill_detail (id_bill INT, id_product INT, price NUMERIC(12,2), quantity INT, 
                        PRIMARY KEY (id_bill,id_product), FOREIGN KEY(id_bill) REFERENCES plazas.bill, FOREIGN KEY(id_product) REFERENCES plazas.product);"""
cur = myConnection.cursor()
cur.execute(query)
cur.close()
myConnection.commit()

# CREATE TABLE stored_in
query = """CREATE TABLE IF NOT EXISTS plazas.stored_in (id_warehouse VARCHAR, id_product INT,quantity INT, hour TIME, date DATE,
                        PRIMARY KEY (id_warehouse,id_product, date), FOREIGN KEY(id_warehouse) REFERENCES plazas.warehouse, FOREIGN KEY(id_product) REFERENCES plazas.product);"""
cur = myConnection.cursor()
cur.execute(query)
cur.close()
myConnection.commit()

# CREATE TABLE thermometer
query = """CREATE TABLE IF NOT EXISTS plazas.thermometer (id_store VARCHAR, id_thermometer VARCHAR, mintemp INT, maxtemp INT,
                        PRIMARY KEY (id_store), FOREIGN KEY(id_store) REFERENCES plazas.store);"""
cur = myConnection.cursor()
cur.execute(query)
cur.close()
myConnection.commit()

# CREATE TABLE ther_register
query = """CREATE TABLE IF NOT EXISTS plazas.ther_register (id_store VARCHAR, id_thermometer VARCHAR, temperature INT, hour TIME, date DATE,
                        PRIMARY KEY (id_store, date, hour), FOREIGN KEY(id_store) REFERENCES plazas.store);"""
cur = myConnection.cursor()
cur.execute(query)
cur.close()
myConnection.commit()

# CREATE TABLE restock
query = """CREATE TABLE IF NOT EXISTS plazas.restock (id_store VARCHAR, id_shelf SERIAL, id_warehouse VARCHAR, quantity INT, hour TIME,date DATE,  
                        PRIMARY KEY (id_store,id_shelf, id_warehouse, date, hour), FOREIGN KEY(id_store, id_shelf) REFERENCES plazas.shelf(id_store,id_shelf), FOREIGN KEY(id_warehouse) REFERENCES plazas.warehouse);"""
cur = myConnection.cursor()
cur.execute(query)
cur.close()
myConnection.commit()

query_file = open("DatosPlaza.sql", 'r')
query = query_file.read()
cur = myConnection.cursor()
cur.execute(query)
cur.close()
myConnection.commit()
