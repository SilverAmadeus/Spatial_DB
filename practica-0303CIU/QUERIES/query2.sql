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

"AV9";"area_verde";0.554797040048294
"CENTRO";"UNIVERSIDAD";0.473274771213633
"SUR";"HOSPITAL";1.7359044722064
"SUR";"HOSPITAL";2.49928853008146

------------------------------------------------------------------------------------------------
with q1 as(
	select st_buffer(e.geo, 1) as geo
	from estacion e
	where e.nombre='AM1')
select q2.nombre, q2.tipo, st_distance(q1.geo,(q2.dump).geom)
from (
	select st_dump(geo) as dump , nombre, tipo
	from centro_interes
	)q2
join q1
on st_DWithin(q1.geo,(q2.dump).geom,3)
union
select av.nombre,'AREA_VERDE', st_distance(q1.geo,av.geo)
from q1
join area_verde av
on st_DWithin(q1.geo,av.geo,3);

--NOMBRE, TIPO,
"AV9";"AREA_VERDE";0.554797040048294
"CENTRO";"UNIVERSIDAD";0.473274771213633
"SUR";"HOSPITAL";1.7359044722064
"SUR";"HOSPITAL";2.49928853008146
