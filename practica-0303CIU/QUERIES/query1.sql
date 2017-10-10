select count(*), c.nombre from colonia c
join estacion e on st_covers(c.geo, e.geo)
group by c.nombre;

3;"AGUIRRE"
4;"ALLENDE"
3;"CARRANZA"
7;"CENTRO"
2;"HIDALGO"
2;"ITURBIDE"
3;"JUAREZ"
4;"MONTES"
2;"MORELOS"
4;"SUAREZ"
2;"VILLA"
4;"ZAPATA"
4;"ZARAGOZA"

select count(*), c.nombre
from colonia c
join estacion e
on st_covers(c.geo, e.geo)
join linea_metro lm
on (st_touches(e.geo,lm.geo)
   or st_contains(lm.geo,e.geo))
group by c.nombre;

2;"AGUIRRE"
4;"ALLENDE"
3;"CARRANZA"
11;"CENTRO"
3;"HIDALGO"
1;"ITURBIDE"
3;"JUAREZ"
1;"MONTES"
2;"MORELOS"
3;"SUAREZ"
3;"VILLA"
4;"ZAPATA"
2;"ZARAGOZA"
