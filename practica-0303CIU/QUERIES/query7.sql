select cv.nombre, ci.nombre, st_astext((ci.dump).geom) as UBICACION
from colonia c
join colonia cv on st_touches(c.geo, cv.geo)
join
(
select st_dump(geo) as dump, nombre
    from centro_interes
	where tipo = 'HOTEL'
) ci on st_covers(cv.geo, (ci.dump).geom)
where c.nombre = 'CENTRO';

-----------------------------------------
"MORELOS";"SOL-B";"POINT(18.0141 4.03995)"
"VILLA";"SOL-A";"POINT(7.99217 14.9965)"

--No hace DUMP
--Tienen que ser 3 puntos


HIDALGO; SOL-B 5.84 2.96
