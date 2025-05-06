import pandas, os
os,listdir()
df1= pandas.read_csv("expanded_orders_data.csv")
df2= pandas.read_csv("expanded_agents_data.csv")
dir (geopy)
from geopy.geocoders import Nominatim
nom = Nominatim()
n = nom.geocode("London eye")
print(n.latitude, n.longitude)
type(n)
