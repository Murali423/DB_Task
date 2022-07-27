import pymongo
import json
import logging

logging.basicConfig(filename='mongodb.log', level=logging.DEBUG,
                    format='[%(levelname)s] : %(asctime)s : %(name)s : %(message)s ')
try:
    logging.debug('Createing connection for mongodb an testing the connection')
    client = pymongo.MongoClient("mongodb+srv://murali:mongodb123@cluster0.fxgp1cv.mongodb.net/?retryWrites=true&w=majority")
    logging.info('Connection is')
    db = client.test
    logging.info(db)
    logging.debug('creating the new database and collection for database')
    db_att = client['attribute_dataset']
    collection = db_att['attribute']
    logging.info('Database and collection has created')
    logging.debug('loading attribute json data from json file')
    with open('C:\\Users\\HP\\Documents\\python-practice\\Assignment-Folder\\attribute.json') as f:
        json_data = json.load(f)
    logging.info('loading the json data into Mongodb data base ')
    if isinstance(json_data, list):
        collection.insert_many(json_data)
    else:
        collection.insert_one(json_data)
    logging.info(json_data)
    logging.debug('accessing dress json data from json file')
    with open('C:\\Users\\HP\\Documents\\python-practice\\Assignment-Folder\\dress.json') as f:
        dress_json = json.load(f)
    logging.info('loading the json data into Mongodb data base ')
    if isinstance(dress_json, list):
        collection.insert_many(dress_json)
    else:
        collection.insert_one(dress_json)
    logging.info(dress_json)
except Exception as e:
    logging.exception(e)



