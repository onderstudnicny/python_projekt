from bs4 import BeautifulSoup
import requests
import produkt

baseurl = 'https://www.czc.cz/'
headers = {
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36',
}

r = requests.get('https://www.czc.cz/graficke-karty/produkty')
soup = BeautifulSoup(r.content, 'lxml')

product_list = soup.find_all('div', class_='new-tile')

product_urls = []

for product in product_list:
    for link in product.find_all('a', href=True):
        product_urls.append(baseurl + link['href'])

product_urls = list(dict.fromkeys(product_urls))
product_urls.remove('https://www.czc.cz/javascript:;')

p = produkt.Produkt(product_urls[1])

print(product_urls)



#where_from = input()
#where_to = input()