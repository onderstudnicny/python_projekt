from bs4 import BeautifulSoup
from czc_produkt import Czc_produkt
import requests
import re



def find_all_pr_czc():
    baseurl = 'https://www.czc.cz/'
    headers = {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36',
    }

    r = requests.get('https://www.czc.cz/graficke-karty/produkty?q-c-0-availability=d1&q-c-1-conditionSticker=sNEW&q-first=')
    soup = BeautifulSoup(r.content, 'lxml')


    product_list = soup.find_all('div', class_='new-tile')



    product_urls = []
    for product in product_list:
        for link in product.find_all('a', href=True):
            product_urls.append(baseurl + link['href'])

    x = ''
    y = 0

    if (soup.find('button',class_='btn btn-secondary show-next').text.strip()):
        x = soup.find('button',class_='btn btn-secondary show-next').text.strip()
    while(x!=''):
        x=x.replace('Zobrazit dalších ','')
        y=y+int(x)
        r = requests.get(f'https://www.czc.cz/graficke-karty/produkty?q-first={y}&dostupnost=skladem&stav-zbozi=nove')
        soup = BeautifulSoup(r.content, 'lxml')


        product_list = soup.find_all('div', class_='new-tile')

        for product in product_list:
            for link in product.find_all('a', href=True):
                product_urls.append(baseurl + link['href'])

        if(soup.find('button',class_='btn btn-secondary show-next')):
            x = soup.find('button',class_='btn btn-secondary show-next').text.strip()
        else:
            x =''


    product_urls = list(dict.fromkeys(product_urls))
    product_urls.remove('https://www.czc.cz/javascript:;')

    for i in range(0,len(product_urls)):
        c = Czc_produkt(product_urls[i])
    print(product_urls)
if __name__ == '__main__':
    find_all_pr_czc()
