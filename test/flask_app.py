from flask import Flask
import mysql.connector

app = Flask(__name__)

# MySQL Configuration
mysql_config = {
   "host": "192.168.56.3",
   "user": "myuser",
   "password": "4#j4TA-qNf5yj5M5^3D+",
   "database": "MonSite",
}

@app.route('/')
def frontend():
    try:
        conn = mysql.connector.connect(**mysql_config)
        cur = conn.cursor(dictionary=True)  # Use dictionary cursor
        cur.execute("SELECT * FROM MonSite.Users")
        rv = cur.fetchall()
        return str(rv)
    except Exception as e:
        return str(e)
    finally:
        cur.close()
        conn.close()
        
@app.route('/form')
def form():
    try:
        file = open("Formulaire.html",'r')
        contenu= file.read()
        file.close()
        return contenu
        			
if __name__ == '__main__':
    app.run(host='0.0.0.0')

