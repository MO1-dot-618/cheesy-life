from sqlalchemy import create_engine
from sqlalchemy.exc import SQLAlchemyError
from sqlalchemy.orm import sessionmaker
from os import getenv
import psycopg2
from sqlalchemy import text

# Define a function to execute SQL script
def execute_sql_script(engine, script_file):
    """Execute SQL script"""
    with open(script_file, 'r', encoding="utf-8") as file:
        sql_script = file.read()
        print("File read")
        #sql_commands = sql_script.split(';')

    with engine.connect() as connection:
        try:
            print("trying to execute sql script")
            """
            for command in sql_commands:
                connection.execute(text(command + ";"))
            """
            connection.execute(text(sql_script))
            print("SQL script executed successfully.")
        except SQLAlchemyError as e:
            print("Error executing SQL script:", e)

def main():
    # Database connection parameters
    #db_url = f"postgresql://{getenv('DB_USER')}:{getenv('DB_PWD')}@{getenv('DB_HOST')}:{getenv('DB_PORT')}/{getenv('DB')}"
    db_url = f"postgresql://air_dev:rP5BUCN6CI4OOr8vWXTMaEZEoGJrIb08@dpg-cov771o21fec73ffrp8g-a.frankfurt-postgres.render.com/cheese_db"

    try:
        # Create SQLAlchemy engine
        engine = create_engine(db_url)

        # Create a session
        Session = sessionmaker(bind=engine)
        session = Session()

        # Path to your SQL script files
        script_files = ['website/static/sql/set_up.sql', 'website/static/sql/add_data.sql']

        # Execute SQL script
        for script_file in script_files:
            execute_sql_script(engine, script_file)

    except SQLAlchemyError as e:
        print("Error:", e)

if __name__ == '__main__':
    main()