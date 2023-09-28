from flask import Flask

app = Flask(__name__)

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