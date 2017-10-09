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
select ci.nombre, ci.tipo as TIPO, st_distance((ci.dump).geom, st_boundary(q1.geo))
from 
(
	select st_dump(geo) as dump , nombre, tipo from centro_interes
	)ci, q1
where st_dwithin((ci.dump).geom, st_boundary(q1.geo), 3)
UNION
select av.nombre, 'area_verde' as tipo, st_distance(av.geo, st_boundary(q1.geo))
from area_verde av, q1
where st_dwithin(av.geo, st_boundary(q1.geo), 3);