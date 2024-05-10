#!/usr/bin/python3
import uuid
from flask import Flask, Blueprint, render_template, request, jsonify, redirect, url_for
import logging
from search_types import db_filter, db_cheese_id

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

@views.route('/recipes/<string:cheese_name>')
def recipe(cheese_name):
    return render_template('recipe.html', cheese_name=cheese_name)


@views.route('/about', strict_slashes=False)
def about():
     return render_template('about.html')

@views.route('/cheese_id/id=<int:id>', strict_slashes=False)
def cheeseId(id):
     cheese = db_cheese_id(id)
     return render_template('cheese_id.html', cheese=cheese)

@views.route('/search', methods=['GET'])
def search():
    texture_filters = request.args.get('texture', '').split(',')
    source_filters = request.args.get('source', '').split(',')
    color_filters = request.args.get('color', '').split(',')
    price_filter = request.args.get('price')
    country_filter = request.args.get('country')


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

    # call the function db_storage to fetch data in the database
    # Call the db_storage function with individual filter parameters
    
    db_results = db_filter(**search_results)
    

    return render_template('results.html', results=db_results)

