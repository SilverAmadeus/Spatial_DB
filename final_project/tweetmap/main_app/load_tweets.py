from .models import Tweet
from django.contrib.gis.geos import GEOSGeometry
import json

#Se crea una instancia del modelo/tabla al cual le vamos a cargar datos
#Crea todas las intancias que necesitas y despues de crearlas salvalos para que haga un commit en la DB

def run(verbose=True):
	data = json.load(open('supreme.json'))
	for i in range(0,len(data)):
		tweet = Tweet(
			category = data[i]["CLASS"],
			user = data[i]['USER'], 
			text = data[i]['TWEET'], 
			location = GEOSGeometry(data[i]['JSON_COOR'])
			)
		#tweet = Tweet(user = 'Nombre 4', text = 'Texto del Tweet', location = GEOSGeometry('{ "type": "Point", "coordinates": [ -99.1843501, 19.3998346 ] }'))
		print(tweet)
		tweet.save()
