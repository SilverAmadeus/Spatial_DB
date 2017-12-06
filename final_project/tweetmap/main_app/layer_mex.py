import os
from django.contrib.gis.utils import LayerMapping
from .models import CiudadDeMexico

ciudaddemexico_mapping = {
    'id_0': 'ID_0',
    'iso': 'ISO',
    'name_0': 'NAME_0',
    'id_1': 'ID_1',
    'name_1': 'NAME_1',
    'id_2': 'ID_2',
    'name_2': 'NAME_2',
    'hasc_2': 'HASC_2',
    'ccn_2': 'CCN_2',
    'cca_2': 'CCA_2',
    'type_2': 'TYPE_2',
    'engtype_2': 'ENGTYPE_2',
    'nl_name_2': 'NL_NAME_2',
    'varname_2': 'VARNAME_2',
    'geom': 'MULTIPOLYGON',
}

ciudaddemexico_shp = os.path .abspath(os.path.join(os.path.dirname(__file__),'data/MEX_adm2.shp'))

def run(verbose=True):
    lm = LayerMapping(CiudadDeMexico, ciudaddemexico_shp, ciudaddemexico_mapping, transform=False, encoding='iso-8859-1')
    lm.save(strict=True, verbose=verbose)