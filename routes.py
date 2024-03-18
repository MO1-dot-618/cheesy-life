#!/usr/bin/python3
import uuid
from flask import Flask, render_template, request, jsonify
from models.search_types import db_storage

app = Flask(__name__)

@app.route('/', strict_slashes=False)
def home():
     return render_template('home.html')

@app.route('/types', strict_slashes=False)
def types():
     return render_template('types.html')

@app.route('/recipes', strict_slashes=False)
def recipes():
     return render_template('recipes.html')

@app.route('/about', strict_slashes=False)
def about():
     return render_template('about.html')

@app.route('/search', methods=['GET'])
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
    # print the data in python terminal for debugging
    print('Constructed Search Results:', search_results)

    # call the function db_storage to fetch data in the database
    db_storage(search_results)
    
    # it should return the data from db_storage but will do later!
    return jsonify(search_results)


if __name__ == "__main__":
    """ Main Function """
    app.run(host='0.0.0.0', port=5001, debug=True)
