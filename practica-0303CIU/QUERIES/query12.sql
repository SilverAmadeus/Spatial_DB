select e.nombre, st_asText(e.geo) as UBICACION, lm.nombre as LINEA_ORIGEN, lm1.nombre as LINEA_DESTINO
from linea_metro lm
join linea_metro lm1
on st_crosses(lm.geo,lm1.geo)
join estacion e
on st_covers(lm.geo,e.geo)
and st_covers(lm1.geo,e.geo)
order by e.nombre;


-----------------------------------------------------------------------------
"AM1";"POINT(13.5106 11.5699)";"AZUL";"MORADA"
"AM1";"POINT(13.5106 11.5699)";"MORADA";"AZUL"
"CA1";"POINT(14.5677 13.0505)";"CAFE";"AZUL"
"CA1";"POINT(14.5677 13.0505)";"AZUL";"CAFE"
"CM1";"POINT(12.0094 14.0024)";"CAFE";"MORADA"
"CM1";"POINT(12.0094 14.0024)";"MORADA";"CAFE"
"CR1";"POINT(8.01331 11.9295)";"ROJA";"CAFE"
"CR1";"POINT(8.01331 11.9295)";"CAFE";"ROJA"
"RA1";"POINT(11.9248 9.98355)";"AZUL";"ROJA"
"RA1";"POINT(11.9248 9.98355)";"ROJA";"AZUL"
