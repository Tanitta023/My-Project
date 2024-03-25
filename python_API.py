import requests 
from requests import get 

url = "https://reqres.in/api/users?page=2"

resp = get(url)

resp.status_code 

print(resp.status_code)