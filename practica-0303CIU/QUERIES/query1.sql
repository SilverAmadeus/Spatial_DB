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


---No consideran las que pertenecen a la ferrea
--La linea del metro contiene a la estacion

-- Corregido
select count(*) as numero, c.nombre as COLONIA
from colonia c join estacion e
on st_covers(c.geo, e.geo)
join (select st_union(geo) as geo_u from linea_metro) lm
on st_covers(lm.geo_u, e.geo)
group by c.nombre
order by c.nombre;

 count |  colonia
-------+----------
     2 | AGUIRRE
     4 | ALLENDE
     3 | CARRANZA
     7 | CENTRO
     2 | HIDALGO
     1 | ITURBIDE
     3 | JUAREZ
     1 | MONTES
     2 | MORELOS
     3 | SUAREZ
     2 | VILLA
     4 | ZAPATA
     2 | ZARAGOZA
