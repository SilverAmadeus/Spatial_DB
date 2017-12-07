from .models import Tweet
from django.contrib.gis.geos import GEOSGeometry
import pandas as pd

#Se crea una instancia del modelo/tabla al cual le vamos a cargar datos
#Crea todas las intancias que necesitas y despues de crearlas salvalos para que haga un commit en la DB

def run(verbose=True):
	data = pd.read_json('./supreme.json',orient='records')
	for i in range(0,len(data['TWEET'])):
		tweet = Tweet(user = data['USER'][i], text = data['TWEET'][i], location = GEOSGeometry(data['JSON_COOR'][i]))
		#tweet = Tweet(user = 'Nombre 4', text = 'Texto del Tweet', location = GEOSGeometry('{ "type": "Point", "coordinates": [ -99.1843501, 19.3998346 ] }'))
		print(tweet)
		tweet.save()
