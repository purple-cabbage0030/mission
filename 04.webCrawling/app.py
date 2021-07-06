import re
from flask import Flask, request, render_template, jsonify
import time
from bs4 import BeautifulSoup
from selenium import webdriver
from selenium.webdriver.support.ui import WebDriverWait
from crawler import Crawling

app = Flask(__name__)
app.config['JSON_AS_ASCII'] = False

@app.route("/", methods=["get"])
def get():
    return render_template("vis.html")

@app.route("/getdata", methods=["get"])
def getdata():
    Crawling.crawl_exel()
    return ''

@app.route("/g1", methods=["get"])
def visualize():
    Crawling.visual1()
    return ''


if __name__ == "__main__":
    app.run(debug=True, host="127.0.0.1", port="5000")
