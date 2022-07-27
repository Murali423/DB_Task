import mysql.connector as conn
import pandas as pd
import logging

logging.basicConfig(filename='mysql.log',level=logging.DEBUG,
                    format='[%(levelname)s]:%(name)s:%(asctime)s:%(message)s')

try:
    logging.info('Creating the connection to mysql database')
    db = conn.connect(host='localhost', user = 'root', password = 'MuR@li@0423', database ='task')
    logging.info(db)
    logging.info('Connection to mysql is successful')

except Exception as e:
    logging.exception(e)

finally:
    db.close()

