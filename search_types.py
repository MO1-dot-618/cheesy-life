#!/usr/bin/python3
from sqlalchemy import create_engine, func
from sqlalchemy.orm import sessionmaker, join
from os import getenv
from sqlalchemy import text
from model import Cheese, Source, Texture, Color, CheeseRecipe

"""Initialize the database storage"""

"""
    MYSQL_USER = getenv('MYSQL_USER')
    MYSQL_PWD = getenv('MYSQL_PWD')
    MYSQL_HOST = getenv('MYSQL_HOST')
    MYSQL_DB = getenv('MYSQL_DB')

"""
MYSQL_USER = "air_dev"
MYSQL_PWD = "air_dev_pwd"
MYSQL_HOST = "localhost"
MYSQL_DB = "cheese_db"

"""
    #this must be fixed! we shoudl use environment variables

MYSQL_USER = "zab"
MYSQL_PWD = "GonKillua05!"
MYSQL_HOST = "localhost"
MYSQL_DB = "cheese"

"""    
engine = create_engine(f'mysql+pymysql://{MYSQL_USER}:{MYSQL_PWD}@{MYSQL_HOST}/{MYSQL_DB}')


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

def fetch_recipes_from_database(cheese_id=None):
    Session = sessionmaker(bind=engine)
    session = Session()

    # Query the database to fetch all recipes
    query = session.query(
        CheeseRecipe.recipe_id,
        CheeseRecipe.recipe_name,
        CheeseRecipe.ingredients,
        CheeseRecipe.directions,
        CheeseRecipe.nutrition_facts,
        CheeseRecipe.cheese_id

    )
    print("Query before filter:", query)
    if cheese_id is not None:
        query = query.filter(CheeseRecipe.cheese_id == cheese_id)

    print("Query after filter:", query)

    recipes = query.all()

    print("Fetched recipes:", recipes)

    # Transform the list of tuples into a list of dictionaries
    recipes_list = []
    for recipe in recipes:
        recipe_dict = {
            'id': recipe[0],
            'recipe_name': recipe[1],
            'ingredients': recipe[2],
            'directions': recipe[3],
            'nutrition_facts': recipe[4],
            'cheese_id': recipe[5]
        }
        recipes_list.append(recipe_dict)

    session.close()
    return recipes_list
