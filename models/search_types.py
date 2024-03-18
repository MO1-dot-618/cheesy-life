#!/usr/bin/python3
from sqlalchemy import create_engine, func
from sqlalchemy.orm import sessionmaker, join
from os import getenv
from models.model import Cheese, Source, Texture, Color

def db_storage(search_results):
    """Initialize the database storage"""

    """
    MYSQL_USER = getenv('MYSQL_USER')
    MYSQL_PWD = getenv('MYSQL_PWD')
    MYSQL_HOST = getenv('MYSQL_HOST')
    MYSQL_DB = getenv('MYSQL_DB')
    """
    #this must be fixed! we shoudl use environment variables
    MYSQL_USER = "air_dev"
    MYSQL_PWD = "air_dev_pwd"
    MYSQL_HOST = "localhost"
    MYSQL_DB = "cheese_db"
    
    engine = create_engine(f'mysql+pymysql://{MYSQL_USER}:{MYSQL_PWD}@{MYSQL_HOST}/{MYSQL_DB}')
    
    Session = sessionmaker(bind=engine)
    session = Session()

    query = session.query(Cheese)
    
    if search_results['texture_filters'] and search_results['texture_filters'][0] != '':
        query = query.join(Texture)
        query = query.filter(Texture.name.in_(search_results['texture_filters']))
    
    if search_results['source_filters'] and search_results['source_filters'][0] != '':
        query = query.join(Source)
        query = query.filter(Source.name.in_(search_results['source_filters']))

    if search_results['color_filters'] and search_results['color_filters'][0] != '':
        query = query.join(Color)
        query = query.filter(Color.name.in_(search_results['color_filters']))

    if search_results['price_filter']:
        query = query.filter(Cheese.price <= search_results['price_filter'])

    if search_results['country_filter']:
        query = query.filter(func.lower(Cheese.country).like(f"%{search_results['country_filter'].lower()}%"))

    results = query.all()

    for cheese in results:
        print(cheese.name, cheese.country, cheese.texture.name, cheese.color.name, cheese.price)

    session.close()
