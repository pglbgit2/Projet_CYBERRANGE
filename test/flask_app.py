from flask import Flask
import os
from flask_mysqldb import MySQL

app = Flask(__name__)

# Required
app.config["MYSQL_HOST"] = "192.168.56.7"
app.config["MYSQL_USER"] = "myuser"
app.config["MYSQL_PASSWORD"] = "4#j4TA-qNf5yj5M5^3D+"
app.config["MYSQL_DB"] = "testDB"
# Extra configs, optional:
app.config["MYSQL_CURSORCLASS"] = "DictCursor"
app.config["MYSQL_CUSTOM_OPTIONS"] = {"ssl": {"ca": "/path/to/ca-file"}}  # https://mysqlclient.readthedocs.io/user_guide.html#functions-and-attributes

mysql = MySQL(app)

cur = mysql.connection.cursor()
cur.execute("""SELECT user FROM mysql.user""")
rv = cur.fetchall()
print(str(rv))


def getfrontend():
    file = open('frontend.html','r')
    contenu= file.read()
    file.close()
    return contenu


@app.route('/')
def frontend():
    return getfrontend()

if __name__ == '__main__':
    app.run(host='0.0.0.0')
