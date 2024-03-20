#!/usr/bin/python3
from sqlalchemy import create_engine, func
from sqlalchemy.orm import sessionmaker, join
from os import getenv
from sqlalchemy import text
from model import Cheese, Source, Texture, Color

def db_storage(texture_filters, source_filters, color_filters, price_filter, country_filter):
    """Initialize the database storage"""

    """
    MYSQL_USER = getenv('MYSQL_USER')
    MYSQL_PWD = getenv('MYSQL_PWD')
    MYSQL_HOST = getenv('MYSQL_HOST')
    MYSQL_DB = getenv('MYSQL_DB')
    """
    #this must be fixed! we shoudl use environment variables
    MYSQL_USER = "zab"
    MYSQL_PWD = "GonKillua05!"
    MYSQL_HOST = "localhost"
    MYSQL_DB = "cheese"
    
    engine = create_engine(f'mysql+pymysql://{MYSQL_USER}:{MYSQL_PWD}@{MYSQL_HOST}/{MYSQL_DB}')
    
    Session = sessionmaker(bind=engine)
    session = Session()

    query = session.query(Cheese)

    if texture_filters and texture_filters[0] != '':
        query = query.join(Texture)
        query = query.filter(Texture.name.in_(texture_filters))
    
    if source_filters and source_filters[0] != '':
        query = query.join(Source)
        query = query.filter(Source.name.in_(source_filters))

    if color_filters and color_filters[0] != '':
        query = query.join(Color)
        query = query.filter(Color.name.in_(color_filters))

    if price_filter:
        query = query.filter(Cheese.price <= price_filter)

    if country_filter:
        query = query.filter(func.lower(Cheese.country).like(f"%{country_filter.lower()}%"))

    print("SQL Query:", query)
    print("Parameters:", query.statement.compile().params)


    results = query.all()

    # Print the search results for debugging
    print("Search Results:", results)
    for cheese in results:
        print(cheese.name)



    session.close()
