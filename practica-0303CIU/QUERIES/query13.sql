select c.nombre, av.nombre
from colonia c
join area_verde av
on st_relate(av.geo,c.geo,'2FF11F212');
