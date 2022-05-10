from bs4 import BeautifulSoup
import mysql.connector
import requests
import re

db = mysql.connector.connect(
    host='127.0.0.1',
    user='root',
    passwd='',
    database='pythonproject_db'
)

mycursor = db.cursor()

class Mironet_produkt:
    def __init__(self, url):
        r = requests.get(url)
        soup = BeautifulSoup(r.content, 'lxml')

        name = soup.find('div', class_='product_name').text.strip()
        
        graphics_chip = soup.find('td', class_='ParamValue').find_next('td', class_='ParamValue').find_next('td', class_='ParamValue').text.strip()
        graphics_chip = graphics_chip.replace(' ','')
        graphics_chip = graphics_chip.replace('-','')
        graphics_chip = graphics_chip.replace('AMD','')
        graphics_chip = graphics_chip.replace('NVIDIA','')
        
        
        
        nonBreakSpace = u'\xa0'
        
        price = soup.find('div',class_='product_cena_box')
        price = price.find('span',class_='product_dph').text.strip()
        price = price.replace(nonBreakSpace,'')
        price = price.replace('Kč','')
        
        
        
        mycursor.execute('INSERT INTO graphicscards(name, url, price, graphics_chip) VALUES(%s,%s,%s,%s)',(str(name),str(url),float(price),str(graphics_chip)))
        db.commit()
        