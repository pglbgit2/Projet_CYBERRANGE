from flask import Flask, render_template


app = Flask(__name__)

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