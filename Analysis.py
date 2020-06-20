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


def hourTendency():
    query="""WITH hourTendency AS (SELECT plazas.store.id_store AS storeid, CAST(EXTRACT(HOUR FROM plazas.bill.hour) AS INT) AS hour, SUM(plazas.bill.total_bs) AS total 
FROM plazas.bill 
INNER JOIN plazas.store ON plazas.store.id_store=plazas.bill.id_store
GROUP BY EXTRACT(HOUR FROM plazas.bill.hour),plazas.store.id_store
ORDER BY plazas.store.id_store, total DESC)

SELECT
      storeid, hour,total
    FROM (
      SELECT
        ROW_NUMBER() OVER (PARTITION BY storeid) AS r,
        t.*
      FROM
        hourTendency t) x
    WHERE
      x.r <= 1
"""

def preferedStoreAffiliates():
    query="""SELECT COUNT(plazas.bill.id_bill), plazas.store.name FROM plazas.bill
INNER JOIN plazas.store ON plazas.bill.id_store=plazas.store.id_store
WHERE plazas.bill.id_client IN (SELECT plazas.affiliate.id_client FROM plazas.affiliate)
GROUP BY plazas.store.id_store
ORDER BY COUNT(plazas.bill.id_bill) DESC
LIMIT 1




"""
pretty_select(query)

def preferedCategoryAffiliates():
    query="""SELECT  plazas.category.name, SUM(plazas.bill_detail.quantity) AS quantity
FROM plazas.bill_detail
INNER JOIN plazas.bill ON plazas.bill_detail.id_bill=plazas.bill.id_bill
INNER JOIN plazas.product ON plazas.bill_detail.id_product=plazas.product.id_product
INNER JOIN plazas.category ON plazas.product.id_category=plazas.category.id_category
WHERE plazas.bill.id_client IN (SELECT plazas.affiliate.id_client FROM plazas.affiliate)
GROUP BY plazas.category.id_category
ORDER BY quantity DESC
LIMIT 1





"""
pretty_select(query)

def preferedBankAffiliates():
    query="""SELECT COUNT(plazas.bill.id_bill), plazas.bank.name FROM plazas.bill
INNER JOIN plazas.bank ON plazas.bill.id_bank=plazas.bank.id_bank
WHERE plazas.bill.id_client IN (SELECT plazas.affiliate.id_client FROM plazas.affiliate)
GROUP BY plazas.bank.id_bank
ORDER BY COUNT(plazas.bill.id_bill) DESC
LIMIT 1



"""
pretty_select(query)