from bs4 import BeautifulSoup
import requests
import mysql.connector
import re

db = mysql.connector.connect(
    host='127.0.0.1',
    user='root',
    passwd='',
    database='mydatabase'
)

mycursor = db.cursor()

class Czc_produkt:
    def __init__(self, url):
        r = requests.get(url)
        soup = BeautifulSoup(r.content, 'lxml')

        name = soup.find('h1').text.strip()

        
        graphics_chip = soup.find('div', class_='pd-parameter-item clearfix')
        graphics_chip = graphics_chip.find('p').find_next('p').text.strip(' \n\t')
        graphics_chip = graphics_chip.replace('Grafický čip:','')
        graphics_chip = re.sub(r"[\n\t\s]*", "", graphics_chip)
        print(graphics_chip)

        nonBreakSpace = u'\xa0'

        price = soup.find('div', class_='total-price')
        price = price.find('span',class_='price-vatin').text.strip()
        price = price.replace(nonBreakSpace,'')
        price = price.replace('Kč','')

        
        mycursor.execute('INSERT INTO graphicscards(name, url, price, graphics_chip) VALUES(%s,%s,%s,%s)',(str(url),str(name),float(price),str(graphics_chip)))
        db.commit()

