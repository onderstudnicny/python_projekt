from bs4 import BeautifulSoup
import requests
import os
import django

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'djangoProject.settings')
django.setup()

from Grafickekarty.models import GraphicsCards

class Mironet_product:
    def __init__(self,url):
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

        gc = GraphicsCards(name=name, url=url, price=price, graphics_chip=graphics_chip)
        gc.save()
