select c.nombre, av.nombre, st_area(av.geo)
from colonia c
join area_verde av
on st_relate(av.geo,c.geo,'2FF10F212')
or st_relate(av.geo,c.geo,'2FF11F212')
or st_relate(av.geo,c.geo,'2FF1FF212')
