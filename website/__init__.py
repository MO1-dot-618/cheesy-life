from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from os import path
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from flask import Flask, Blueprint, render_template, request, jsonify, redirect, url_for

db = SQLAlchemy()
DB_NAME = "cheese"

def create_app():
    app = Flask(__name__)
    app.config['SECRET_KEY'] = 'hjshjhdjah kjshkjdhjs'
    app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://zab:GonKillua05!@localhost/cheese'
    db.init_app(app)

    from .views import views
    
    from model import Cheese, Source, Texture, Color, CheeseFunction
    app.register_blueprint(views, url_prefix='/')
    return app

def create_database(app):
    if not path.exists('website/' + DB_NAME):
        db.create_all(app=app)
        print('Created Database!')