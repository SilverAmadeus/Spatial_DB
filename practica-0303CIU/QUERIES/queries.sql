---- 1
select count(*), c.nombre from colonia c
join estacion e on st_covers(c.geo, e.geo)
group by c.nombre;

---- 2
-- Debe existir una union
with q1 as(
select st_buffer(e.geo, 1) as geo from estacion e
where e.nombre='AM1'
    )
select ci.nombre, ci.tipo as TIPO, st_distance((ci.dump).geom, st_boundary(q1.geo)) as Distancia
from 
(
	select st_dump(geo) as dump , nombre, tipo from centro_interes
	)ci
join q1 on st_dwithin((ci.dump).geom, st_boundary(q1.geo), 3)
UNION
select av.nombre, 'area_verde' as tipo, st_distance(av.geo, st_boundary(q1.geo)) as Distancia
from area_verde av
join q1 on st_dwithin(av.geo, st_boundary(q1.geo), 3);

-- 2 Open Jump

with q1 as(
select st_buffer(e.geo, 1) as geo, e.nombre as ESTACION_NOMBRE from practica3.estacion e
where e.nombre='AM1'
    )
select (ci.dump).geom, CENTRO_NOMBRE, ESTACION_NOMBRE
from 
(
	select st_dump(geo) as dump, practica3.centro_interes.nombre AS CENTRO_NOMBRE from practica3.centro_interes
	)ci
join q1 on st_dwithin((ci.dump).geom, st_boundary(q1.geo), 3)
UNION
select av.geo, av.nombre AS AV_NOMBRE, ESTACION_NOMBRE
from practica3.area_verde av
join q1 on st_dwithin(av.geo, st_boundary(q1.geo), 3);

-- 4
select q1.nombre, count(q2.tipo) 
from 
(
	select st_difference(c.geo, av1.geo_n) as diff, c.nombre
	from practica3.colonia c, 
		(
		select st_union(av.geo) as geo_n from practica3.area_verde av
		) av1

) q1 join
(
	select st_dump(geo) as dump, ci.tipo
	from centro_interes ci 
	where ci.tipo = 'UNIDAD HABITACIONAL'
)q2 on st_contains(q1.diff, (q2.dump).geom)
group by q1.nombre
HAVING count(q2.tipo)>= 3;
--- 5
-- Linea metro 
select e.nombre as ESTACION, lm.nombre as Nombre_linea, av.nombre as Area_Verde, st_astext(e.geo) as UBICACION
from estacion e join linea_metro lm on st_covers(lm.geo, e.geo)
join area_verde av on st_covers(e.geo, av.geo)
UNION
select e.nombre as ESTACION, lf.nombre as Nombre_linea, av.nombre as Area_Verde, st_astext(e.geo) as UBICACION
from estacion e join linea_ferrea lf on st_covers(lf.geo, e.geo)
join area_verde av on st_covers(av.geo, e.geo);

-- 6 
-- 15.9421 16.9636
-- seleciona el punto final del primer linestring de linea_ferrea FERREA A
select st_makeline(st_centroid(c.union), st_endpoint(st_geometryN(lf.geo, 1))), 'EXTENSION' as nombre from practica3.linea_ferrea lf, 
(
select st_union(practica3.colonia.geo) as union from practica3.colonia
    where practica3.colonia.nombre = 'SUAREZ' or practica3.colonia.nombre ='CENTRO'
) c
    where lf.nombre = 'FERREA A'




