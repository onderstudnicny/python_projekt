from bs4 import BeautifulSoup
import requests
class Produkt:
    def __init__(self, url):
        r = requests.get(url)
        soup = BeautifulSoup(r.content, 'lxml')

        name = soup.find('h1').text.strip()

        chip = soup.find('div', class_ = 'pd-parameter-item clearfix') #idk co se tu děje
        chip = chip.find_s('span', string='Grafický čip:')

        price = soup.find('div', class_='total-price')
        price = price.find('span',class_='price-vatin').text.strip()


        manufacturer = soup.find('div', class_='pd-parameter-item clearfix')
        manufacturer = manufacturer.find('span', string='Výrobce grafického čipu:')



        print(name)
        print(price)
        print(manufacturer)
        print(chip)