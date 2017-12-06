from django.db import models
from django.contrib.gis.db import models
from django.contrib.gis.geos import GEOSGeometry

# Create your models here.


class Tweet(models.Model):
	user = models.CharField(max_length=50, null=False)
	text = models.TextField(max_length=280, null=False)
	location = models.PointField(srid=4326)

	def __str__(self):
		template = '{0.user} {0.text}'
		return template.format(self)

class CiudadDeMexico(models.Model):
    id_0 = models.IntegerField()
    iso = models.CharField(max_length=3)
    name_0 = models.CharField(max_length=75)
    id_1 = models.IntegerField()
    name_1 = models.CharField(max_length=75)
    id_2 = models.IntegerField()
    name_2 = models.CharField(max_length=75)
    hasc_2 = models.CharField(max_length=15)
    ccn_2 = models.IntegerField()
    cca_2 = models.CharField(max_length=254)
    type_2 = models.CharField(max_length=50)
    engtype_2 = models.CharField(max_length=50)
    nl_name_2 = models.CharField(max_length=75)
    varname_2 = models.CharField(max_length=150)
    geom = models.MultiPolygonField(srid=4326)

    def __str__(self):
    	return 'Name: %s' % self.name_2