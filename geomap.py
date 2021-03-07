#%load_ext autotime
#https://towardsdatascience.com/reverse-geocoding-in-python-a915acf29eb6
import pandas as pd
import geopandas as gpd
import geopy
from geopy.geocoders import Nominatim
from geopy.extra.rate_limiter import RateLimiter
import matplotlib.pyplot as plt
import plotly_express as px
import tqdm
from tqdm._tqdm_notebook import tqdm_notebook

locator = Nominatim(user_agent="google")
coordinates = "45.354, -75.712"
location = locator.reverse(coordinates)
location.raw

print(location.address)