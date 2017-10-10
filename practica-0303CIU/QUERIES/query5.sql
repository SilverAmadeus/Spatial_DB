select e.nombre as ESTACION, lm.nombre as Nombre_linea, av.nombre as Area_Verde, st_astext(e.geo) as UBICACION
from estacion e join linea_metro lm on st_covers(lm.geo, e.geo)
join area_verde av on st_covers(av.geo, e.geo)
UNION
select e.nombre as ESTACION, lf.nombre as Nombre_linea, av.nombre as Area_Verde, st_astext(e.geo) as UBICACION
from estacion e join linea_ferrea lf on st_covers(lf.geo, e.geo)
join area_verde av on st_covers(av.geo, e.geo);