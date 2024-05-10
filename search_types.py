#!/usr/bin/python3
from sqlalchemy import create_engine, func
from sqlalchemy.orm import sessionmaker, join
from os import getenv
from sqlalchemy import text
from model import Cheese, Source, Texture, Color

"""Initialize the database storage"""
DB_USER = getenv('DB_USER')
DB_PWD = getenv('DB_PWD')
DB_HOST = getenv('DB_HOST')
DB = getenv('DB')
 
engine = create_engine(f'postgresql://{DB_USER}:{DB_PWD}@{DB_HOST}/{DB}')


def db_filter(texture_filters, source_filters, color_filters, price_filter, country_filter):   
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

    results = query.all()

    results_dict = []
    for cheese in results:
        cheese_dict = {
            'id': cheese.id,
            'name': cheese.name,
            'texture': cheese.texture.name if cheese.texture else None,
            'source': cheese.source.name if cheese.source else None,
            'color': cheese.color.name if cheese.color else None,
            'price': cheese.price,
            'country': cheese.country,
            'picture_url': cheese.picture_url,
            'description': cheese.description
        }
        results_dict.append(cheese_dict)

    # Close the session
    session.close()

    # Return the search results as a list of dictionaries
    return results_dict

def db_cheese_id(cheese_id):
    Session = sessionmaker(bind=engine)
    session = Session()

    cheese = session.query(Cheese).filter(Cheese.id == cheese_id).first()
    cheese_dict = {
            'id': cheese.id,
            'name': cheese.name,
            'texture': cheese.texture.name if cheese.texture else None,
            'source': cheese.source.name if cheese.source else None,
            'color': cheese.color.name if cheese.color else None,
            'price': cheese.price,
            'country': cheese.country,
            'picture_url': cheese.picture_url,
            'description': cheese.description
        }
    
    print(cheese_dict)

    session.close()
    return cheese_dict