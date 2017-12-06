from django.contrib import admin
from leaflet.admin import LeafletGeoAdmin
from .models import Tweet, CiudadDeMexico

#Register your models here.

class TweetAdmin(LeafletGeoAdmin):
	list_display = ('user','text', 'location')

class CiudadDeMexicoAdmin(LeafletGeoAdmin):
	list_display = ('id_2','name_2')


admin.site.register(Tweet, TweetAdmin)
admin.site.register(CiudadDeMexico, CiudadDeMexicoAdmin)