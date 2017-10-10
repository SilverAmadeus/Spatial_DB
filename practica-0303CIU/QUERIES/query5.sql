select *
from
  (select e.nombre as ESTACION, lm.nombre as Nombre_linea, av.nombre as Area_Verde, st_astext(e.geo) as UBICACION
  from estacion e join linea_metro lm on st_covers(lm.geo, e.geo)
  join area_verde av on st_covers(av.geo, e.geo)
  UNION
  select e.nombre as ESTACION, lf.nombre as Nombre_linea, av.nombre as Area_Verde, st_astext(e.geo) as UBICACION
  from estacion e join linea_ferrea lf on st_covers(lf.geo, e.geo)
  join area_verde av on st_covers(av.geo, e.geo)) q1
order by nombre_linea;


--------------------------------------
"A3";"AZUL";"AV8";"POINT(9.00705 6.95887)"
"FFB1";"FERREA B";"AV6";"POINT(11 1)"
"R1";"ROJA";"AV1";"POINT(3.02349 14.9965)"
