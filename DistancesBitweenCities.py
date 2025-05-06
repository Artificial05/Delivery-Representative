import pandas, os 
os,listdir()
df2= pandas.read_csv("expanded_agents_data.csv")
dir (geopy)
from geopy.geocoders import Nominatim
nom = Nominatim(user_agent="DistancesBitweenCities")
n = nom.geocode("London eye")
print(n.latitude, n.longitude)
type(n)
