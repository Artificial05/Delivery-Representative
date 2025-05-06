import pandas, os 
os.listdir()

if not os.path.exists("expanded_agents_data.csv"):
    raise FileNotFoundError("Data file missing ")
if not os.path.exists("expanded_orders_data.csv"):
    raise FileNotFoundError("Data file missing ")
df1= pandas.read_csv("expanded_orders_data.csv")
df2= pandas.read_csv("expanded_agents_data.csv")
dir (geopy)
from geopy.geocoders import Nominatim
nom = Nominatim(user_agent="DistancesBitweenCities")
n = nom.geocode("London eye")
print(n.latitude, n.longitude)
type(n)
