from flask import Flask, render_template, json, request
from flaskext.mysql import MySQL
import os
#from flask_mysqldb import MySQL

app = Flask(__name__)


# Required
app.config["MYSQL_HOST"] = "192.168.56.3"
app.config["MYSQL_USER"] = "myuser"
app.config["MYSQL_PASSWORD"] = "4#j4TA-qNf5yj5M5^3D+"
app.config["MYSQL_DB"] = "MonSite"
app.config['MYSQL_CURSORCLASS'] = 'DictCursor'


mysql = MySQL(app)
mysql.init_app(app)

conn = mysql.connect()
cur = conn.cursor()
cur.execute("""SELECT * FROM MonSite.User""")
rv = cur.fetchall()
print(str(rv))


def getfrontend(source):
    file = open(source,'r')
    contenu= file.read()
    file.close()
    return contenu


@app.route('/')
def frontend():
    return getfrontend('Formulaire.html')


if __name__ == '__main__':
    app.run(host='0.0.0.0')
