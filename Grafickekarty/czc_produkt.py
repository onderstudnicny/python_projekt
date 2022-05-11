from bs4 import BeautifulSoup
from django.shortcuts import render,redirect
import requests
import sqlite3
import re
import czc

class Czc_produkt:
    def __init__(self,url):
        r = requests.get(url)
        soup = BeautifulSoup(r.content, 'lxml')

        name = soup.find('h1').text.strip()

        
        graphics_chip = soup.find('div', class_='pd-parameter-item clearfix')
        graphics_chip = graphics_chip.find('p').find_next('p').text.strip(' \n\t')
        graphics_chip = graphics_chip.replace('Grafický čip:','')
        graphics_chip = re.sub(r"[\n\t\s]*", "", graphics_chip)

        nonBreakSpace = u'\xa0'

        price = soup.find('div', class_='total-price')
        price = price.find('span',class_='price-vatin').text.strip()
        price = price.replace(nonBreakSpace,'')
        price = price.replace('Kč','')
