from sqlalchemy import create_engine
from sqlalchemy.exc import SQLAlchemyError
from sqlalchemy.orm import sessionmaker
from os import getenv

# Define a function to execute SQL script
def execute_sql_script(engine, script_file):
    """Execute SQL script"""
    with open(script_file, 'r') as file:
        sql_script = file.read()

    with engine.connect() as connection:
        try:
            connection.execute(sql_script)
            print("SQL script executed successfully.")
        except SQLAlchemyError as e:
            print("Error executing SQL script:", e)

def main():
    # Database connection parameters
    db_url = f"postgresql://{getenv('DB_USER')}:{getenv('DB_PWD')}@{getenv('DB_HOST')}:{getenv('DB_PORT')}/{getenv('DB')}"

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