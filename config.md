Envi variables

MYSQL_DB                       cheese_db
MYSQL_HOST                     localhost
MYSQL_PWD                      air_pwd
MYSQL_USER                     air_dev

In powershell, to set variable:
[System.Environment]::SetEnvironmentVariable('MYSQL_DB','cheese_db')

to list env variables:
dir env:

Install
pip install -r requirements.txt

run the application with
python main.py