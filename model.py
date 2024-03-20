#!/usr/bin/python3
"""
    Classes for the db tables, accessed with SQLAlchemy
"""

from sqlalchemy import Column, Integer, String, Float, ForeignKey
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import relationship

Base = declarative_base()

class Cheese(Base):
    __tablename__ = 'cheese'

    id = Column(Integer, primary_key=True)
    name = Column(String(255))
    country = Column(String(255))
    source_id = Column(Integer, ForeignKey('source.id'))
    texture_id = Column(Integer, ForeignKey('texture.id'))
    color_id = Column(Integer, ForeignKey('color.id'))
    function_id = Column(Integer, ForeignKey('cheese_function.id'))
    price = Column(Float)
    picture_url = Column(String(255))
    picture_small_url = Column(String(255))

    # Define relationships
    source = relationship('Source')
    texture = relationship('Texture')
    color = relationship('Color')
    cheese_function = relationship('CheeseFunction')

class Source(Base):
    __tablename__ = 'source'

    id = Column(Integer, primary_key=True)
    name = Column(String(255))

class Texture(Base):
    __tablename__ = 'texture'

    id = Column(Integer, primary_key=True)
    name = Column(String(255))

class Color(Base):
    __tablename__ = 'color'

    id = Column(Integer, primary_key=True)
    name = Column(String(255))

class CheeseFunction(Base):
    __tablename__ = 'cheese_function'

    id = Column(Integer, primary_key=True)
    name = Column(String(255))