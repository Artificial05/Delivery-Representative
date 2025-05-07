import pandas, os 
from geopy.geocoders import Nominatim
os.listdir()

def load_csv(file_name): # mitigate the risk of FileNotFoundError
    if not os.path.exists(file_name):
        raise FileNotFoundError(f"Data file '{file_name}' missing")
    return pd.read_csv(file_name)

df2 = load_csv("expanded_agents_data.csv")
df1 = load_csv("expanded_orders_data.csv")

dir (geopy)
nom = Nominatim(user_agent="DistancesBitweenCities")
n = nom.geocode("London eye")
print(n.latitude, n.longitude)
type(n)
