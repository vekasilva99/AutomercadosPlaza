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


query="""CREATE OR REPLACE FUNCTION points()
  RETURNS trigger AS
$$
DECLARE
BEGIN
    IF NEW.id_client IN (SELECT plazas.affiliate.id_client FROM plazas.affiliate) THEN
        UPDATE plazas.affiliate set points=plazas.affiliate.points+NEW.points WHERE plazas.affiliate.id_client=NEW.id_client;
    END IF;


    RETURN NEW;
END;
$$
LANGUAGE plpgsql;
"""
cur = myConnection.cursor()
cur.execute(query)
cur.close()
myConnection.commit()

# query="""CREATE  TRIGGER AffiliatePoints 
# AFTER INSERT
#    ON plazas.bill
#    FOR EACH ROW
#        EXECUTE PROCEDURE points()
# """
# cur = myConnection.cursor()
# cur.execute(query)
# cur.close()
# myConnection.commit()