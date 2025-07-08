import requests
import json

url = "https://cml.nl.transit32.local/api/v0/authenticate"

payload = json.dumps({
    "username": "admin",
    "password": "ciscoadmin!"
})

headers = {'Content-Type': "application/json"}

response = requests.request("POST", url, headers=headers, data=payload, verify=False)

print(response.text)