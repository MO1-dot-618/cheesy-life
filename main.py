from website import create_app
import os

app = create_app()

if __name__ == "__main__":
    """ Main Function """
    app.run(host='0.0.0.0', port=5002, debug=True)
    app.config['SQLALCHEMY_DATABASE_URI'] = os.environ.get('DATABASE_URL')