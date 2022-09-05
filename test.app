#!/bin/python3
from flask import Flask, request, abort
import json

app = Flask(__name__)

@app.route("/webhook", methods =["POST"])
def webhook():
    #Section for scripts after git push
    if request.method == 'POST':    
        print(request.json)
        return "success", 200
    else:
        abort(400)
    #End section
 
@app.route("/home")
def home():
    return "HOME PAGE"

if __name__ == "__main__":
    app.run(port=8090,host="0.0.0.0")
