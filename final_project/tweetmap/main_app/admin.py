from django.contrib import admin
from leaflet.admin import LeafletGeoAdmin
from .models import Tweet, MxDistrito

#Register your models here.

class TweetAdmin(LeafletGeoAdmin):
	list_display = ('user','text', 'location')

class MxDistritoAdmin(LeafletGeoAdmin):
	list_display = ('clavegeo','entidad')


admin.site.register(Tweet, TweetAdmin)
admin.site.register(MxDistrito, MxDistritoAdmin)