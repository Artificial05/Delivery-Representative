from geopy.geocoders import Nominatim
from geopy.distance import geodesic
import sys

nom = Nominatim(user_agent="distance_calculator")

def get_geocode(city):
    location = nom.geocode(city)
    if location:
        return (location.latitude, location.longitude)
    else:
        return None

def calculate_distance(city1, city2):
    coords1 = get_geocode(city1)
    coords2 = get_geocode(city2)
    if not coords1 or not coords2:
        print("not found")
        return
    distance_km = geodesic(coords1, coords2).kilometers
    print(f"{distance_km:.2f}")

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python DistancesBitweenCities.py <city1> <city2>")
    else:
        calculate_distance(sys.argv[1], sys.argv[2])
