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

query="""CREATE OR REPLACE FUNCTION affiliateClient()
  RETURNS trigger AS
$$
DECLARE
BEGIN
    IF (NEW.id_client NOT IN (SELECT plazas.affiliate.id_client FROM plazas.affiliate) AND (SELECT COUNT(*) FROM plazas.visit WHERE id_client=NEW.id_client GROUP BY id_client)=4) THEN
        INSERT INTO plazas.affiliate VALUES (NEW.id_client, 0);
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

# query="""CREATE TRIGGER AffiliateClient 
# AFTER INSERT
#    ON plazas.visit
#    FOR EACH ROW
#        EXECUTE PROCEDURE affiliateClient()
# """
# cur = myConnection.cursor()
# cur.execute(query)
# cur.close()
# myConnection.commit()