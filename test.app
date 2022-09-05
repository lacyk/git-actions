#!/bin/python3
from flask import Flask
import json
# from flask import request

app = Flask(__name__)

@app.route("/webhook", methods =["POST"])
def webhook():
    #Section for scripts after git push
    # jsonfile = request.json    
    # after = jsonfile['after']
    os.system("git pull")
    return "200 ok"
    #End section
 
@app.route("/home")
def home():
    return "HOME PAGE"

if __name__ == "__main__":
    app.run(port=8090,host="0.0.0.0")
