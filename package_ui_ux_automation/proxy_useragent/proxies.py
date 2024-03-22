import requests
from random import Random, random, randrange
from bs4 import BeautifulSoup
from useragent import Object_Predefined_User_Agent

from robot.api.deco import  keyword, library


@library
class Predefined_Proxies():

    @keyword
    def FreeProxyList(self):
        self.proxy_site = "https://sslproxies.org/"
        self.headers = {'User-Agent': Object_Predefined_User_Agent.GET_UserAgent()}
        self.soup_for_proxy = requests.get(self.proxy_site, headers=self.headers)
        self.soup_for_proxy_content = BeautifulSoup(self.soup_for_proxy.content, 'html.parser')
        # print ("The content is: ", self.soup_for_proxy_content)
        self.proxiesl = []
        for item in self.soup_for_proxy_content.select('.table-responsive tr'):
            try:
                self.proxiesl.append({'ip': item.select('td')[0].get_text(), 'port': item.select('td')[1].get_text()})
                print("The appended proxy is: ", self.proxiesl)
            except Exception as e:
                print("Error:", str(e))
        self.random_ip_and_port = randrange(len(self.proxiesl))
        self.random_ip = self.proxiesl[self.random_ip_and_port]['ip']
        self.random_port = self.proxiesl[self.random_ip_and_port]['port']
        print("The Random IP is: ", self.random_ip)
        print("The Random Port is: ", self.random_port)
        self.ip_plus_port = "https://" + self.random_ip + ':' + self.random_port
        print("The IP & Port is: ", self.ip_plus_port)


Object_Predefined_Proxies = Predefined_Proxies()
Object_Predefined_Proxies.FreeProxyList()
