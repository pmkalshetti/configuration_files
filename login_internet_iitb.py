import requests
import getpass
import os

# read credentials
username = input("Username: ")
password = getpass.getpass()

# post (credentials are obfuscated)
url_internet = "https://internet.iitb.ac.in/index.php"
credentials = {'uname': username,
               'passwd': password}
try:
    response = requests.post(url_internet, data=credentials)
except requests.exceptions.RequestException as e:
    print("Unable to access {}".format(url_internet))
    exit(1)

# check connection
response = requests.get(url_internet)
if "logout.php" in response.url:
    print("Login success.")

    url_google = "https://google.com"
    try:
        response = requests.get(url_google)
        print("Connected to internet")
    except requests.exceptions.RequestException as e:
        print(e)
        exit(1)
elif "index.php" in response.url:
    print("Error: Incorrect credentials.")
else:
    print("Error! Unable to login.")
