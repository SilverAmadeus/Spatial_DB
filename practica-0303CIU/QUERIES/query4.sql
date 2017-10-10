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