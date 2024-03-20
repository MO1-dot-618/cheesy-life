#!/usr/bin/python3
import uuid
from flask import Flask, Blueprint, render_template, request, jsonify, redirect, url_for
import logging
from search_types import db_storage

views = Blueprint('views', __name__)

@views.route('/', strict_slashes=False)
def home():
     return render_template('home.html')

@views.route('/types', strict_slashes=False)
def types():
     return render_template('types.html')

@views.route('/recipes', strict_slashes=False)
def recipes():
     return render_template('recipes.html')

@views.route('/about', strict_slashes=False)
def about():
     return render_template('about.html')


logger = logging.getLogger(__name__)
logger.setLevel(logging.DEBUG)
formatter = logging.Formatter('%(asctime)s - %(levelname)s - %(message)s')
file_handler = logging.FileHandler('backend.log')
file_handler.setFormatter(formatter)
logger.addHandler(file_handler)

@views.route('/search', methods=['GET'])
def search():
    texture_filters = request.args.get('texture', '').split(',')
    source_filters = request.args.get('source', '').split(',')
    color_filters = request.args.get('color', '').split(',')
    price_filter = request.args.get('price')
    country_filter = request.args.get('country')

    logger.debug("Received Filter Values:")
    logger.debug(f"Texture Filters: {texture_filters}")
    logger.debug(f"Source Filters: {source_filters}")
    logger.debug(f"Color Filters: {color_filters}")
    logger.debug(f"Price Filter: {price_filter}")
    logger.debug(f"Country Filter: {country_filter}")

    # Perform search operation using the received filters
    # Example: query the database or perform an API request
    
    # Dummy response for demonstration
    search_results = {
        'texture_filters': texture_filters,
        'source_filters': source_filters,
        'color_filters': color_filters,
        'price_filter': price_filter,
        'country_filter': country_filter
    }
    # print the data in python terminal for debugging
    print('Constructed Search Results:', search_results)

    # call the function db_storage to fetch data in the database
    # Call the db_storage function with individual filter parameters
    
    db_results = db_storage(**search_results)
    
    # it should return the data from db_storage but will do later!
    return jsonify(db_results)

