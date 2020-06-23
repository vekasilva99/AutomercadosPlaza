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

def select(query):
    cur = myConnection.cursor()
    try:
        cur.execute(query)
    except Exception as e:
        myConnection.commit()
        print('Error en el query:', e)
    else:
        records = cur.fetchall()
        cur.close()
        return records


#Top Clientes Desconocidos por Tienda

def topClientsByStore():
    query="""
    WITH clientTop AS(
        WITH billOrd AS (
            SELECT bill.id_store, bill.id_client, SUM(bill.total_bs) AS bills 
            FROM plazas.affiliate
            RIGHT JOIN plazas.bill AS bill
            ON plazas.affiliate.id_client = bill.id_client
            WHERE plazas.affiliate.points IS NULL
            GROUP BY bill.id_store, bill.id_client
            ORDER BY bill.id_store, bills DESC)
        SELECT billOrd.id_store, client.name, bills
        FROM billOrd
        INNER JOIN plazas.client AS client 
        ON billOrd.id_client = client.id_client
        ORDER BY billOrd.id_store, bills DESC)
    SELECT id_store, name, bills
    FROM (
        SELECT ROW_NUMBER() OVER (PARTITION BY id_store) AS r, t.*
        FROM clientTop t) x
    WHERE x.r <= 1;
    """
    print(select(query))

#Top Clientes Afiliados por Tienda

def topAffiliatesByStore():
    query="""
WITH clientTop AS(
    WITH billOrd AS (
        SELECT bill.id_store, bill.id_client, SUM(bill.total_bs) AS bills 
        FROM plazas.affiliate
        INNER JOIN plazas.bill AS bill
        ON plazas.affiliate.id_client = bill.id_client
        GROUP BY bill.id_store, bill.id_client
        ORDER BY bill.id_store, bills DESC)
    SELECT billOrd.id_store, client.name, bills
    FROM billOrd
    INNER JOIN plazas.client AS client 
    ON billOrd.id_client = client.id_client
    ORDER BY billOrd.id_store, bills DESC)
SELECT id_store, name, bills
FROM (
    SELECT ROW_NUMBER() OVER (PARTITION BY id_store) AS r, t.*
    FROM clientTop t) x
WHERE x.r <= 1;
"""
    print(select(query))

#1 Tienda en Última Semana

def top5inStores():

    query="""
    WITH lista AS (
        WITH totC AS (
            WITH totP AS (
                SELECT bill.id_store, bill_detail.id_product, SUM(bill_detail.quantity) as totalP
                FROM plazas.bill AS bill
                INNER JOIN plazas.bill_detail AS bill_detail 
                ON bill.id_bill = bill_detail.id_bill
                GROUP BY bill.id_store, bill_detail.id_product
                ORDER BY bill.id_store ASC, totalP DESC)
            SELECT totP.id_store, totP.id_product, totP.totalP, product.name
            FROM totP
            INNER JOIN plazas.product AS product ON product.id_product = totP.id_product)
        SELECT totC.id_store, totC.name, SUM(totC.totalP) AS totalC
        FROM totC
        GROUP BY totC.id_store, totC.name
        ORDER BY totC.id_store ASC, totalC DESC)
    SELECT id_store, name, totalC
    FROM (
        SELECT
            ROW_NUMBER() OVER (PARTITION BY id_store) AS r,
            t.*
        FROM
            lista t) x
    WHERE
        x.r <= 5;
    """
    print(select(query))

#2 Tiendas en Última Semana

def oneStoreInAWeek():
    query="""
WITH justOne AS (
    WITH excluir AS (

        WITH weeklyStore1 AS(
            SELECT client.id_client, client.name
            FROM plazas.client AS client
            INNER JOIN plazas.bill AS bill
            ON client.id_client = bill.id_client
            WHERE bill.id_store = '1'
            AND bill.date > now() - interval '1 week'),

        weeklyStore2 AS(
            SELECT client.id_client, client.name
            FROM plazas.client AS client
            INNER JOIN plazas.bill AS bill
            ON client.id_client = bill.id_client
            WHERE bill.id_store = '2'
            AND bill.date > now() - interval '1 week')

        SELECT s1.id_client, s1.name
        FROM weeklyStore1 AS s1
        FULL JOIN weeklyStore2 AS s2
        ON s1.id_client = s2.id_client)

    SELECT bill.id_client 
    FROM plazas.bill AS bill, excluir
    WHERE NOT bill.id_client = excluir.id_client)

    SELECT jo.id_client, client.name
    FROM justOne AS jo
    INNER JOIN plazas.client AS client
    ON jo.id_client = client.id_client;
    """
    print(select(query))

def twoStoresInAWeek():
    query="""
    WITH weeklyStore1 AS(
        SELECT client.id_client, client.name
        FROM plazas.client AS client
        INNER JOIN plazas.bill AS bill
        ON client.id_client = bill.id_client
        WHERE bill.id_store = '1'
        AND bill.date > now() - interval '1 week'),

    weeklyStore2 AS(
        SELECT client.id_client, client.name
        FROM plazas.client AS client
        INNER JOIN plazas.bill AS bill
        ON client.id_client = bill.id_client
        WHERE bill.id_store = '2'
        AND bill.date > now() - interval '1 week')

    SELECT s1.id_client, s1.name
    FROM weeklyStore1 AS s1
    FULL JOIN weeklyStore2 AS s2
    ON s1.id_client = s2.id_client;
    """
    print(select(query))

#Rotacion de Inventario
def rotacion():

    query="""
    WITH catCount AS(
        WITH cuenta AS (
            SELECT restock.id_store, restock.id_shelf, COUNT(restock.id_shelf)
            FROM plazas.restock AS restock
            GROUP BY restock.id_store, restock.id_shelf)

        SELECT cuenta.id_store, cuenta.id_shelf, product.id_category, cuenta.count
        FROM cuenta
        INNER JOIN plazas.shelf AS shelf
        ON cuenta.id_shelf = shelf.id_shelf 
        AND cuenta.id_store = shelf.id_store
        INNER JOIN plazas.product AS product
        ON shelf.id_product = product.id_product
        ORDER BY cuenta.id_store, cuenta.id_shelf)

    SELECT category.name AS category_name, SUM(cc.count) AS n_restock  
    FROM catCount AS cc
    INNER JOIN plazas.category AS category
    ON cc.id_category = category.id_category
    GROUP BY category.name
    ORDER BY n_restock DESC
    LIMIT 5;
    """
    print(select(query))

def differentBanks():
    query="""
    WITH result AS(
        WITH b1 AS (   
            SELECT DISTINCT client.id_client, client.name
            FROM plazas.client AS client
            INNER JOIN plazas.bill AS bill
            ON client.id_client = bill.id_client
            WHERE bill.id_bank = '1'
            AND bill.date > now() - interval '1 weeks'),
        b2 AS (   
            SELECT DISTINCT client.id_client, client.name
            FROM plazas.client AS client
            INNER JOIN plazas.bill AS bill
            ON client.id_client = bill.id_client
            WHERE bill.id_bank = '2'
            AND bill.date > now() - interval '1 weeks'),
        b3 AS (   
            SELECT DISTINCT client.id_client, client.name
            FROM plazas.client AS client
            INNER JOIN plazas.bill AS bill
            ON client.id_client = bill.id_client
            WHERE bill.id_bank = '3'
            AND bill.date > now() - interval '1 weeks')
        SELECT DISTINCT bill.id_client 
        FROM plazas.bill AS bill, b1, b2, b3
        WHERE (b1.id_client = bill.id_client
        AND b2.id_client = bill.id_client)
        OR (b1.id_client = bill.id_client
        AND b3.id_client = bill.id_client)
        OR (b2.id_client = bill.id_client
        AND b3.id_client = bill.id_client))
    SELECT result.id_client, client.name
    FROM result
    INNER JOIN plazas.client AS client
    ON result.id_client = client.id_client;
    """
    print(select(query))

