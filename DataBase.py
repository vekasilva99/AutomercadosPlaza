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