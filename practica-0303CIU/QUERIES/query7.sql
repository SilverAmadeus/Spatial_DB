select cv.nombre, ci.nombre, st_astext((ci.dump).geom) as UBICACION
from colonia c 
join colonia cv on st_touches(c.geo, cv.geo)
join
(
select st_dump(geo) as dump, nombre 
    from centro_interes
	where tipo = 'HOTEL'
) ci on st_covers(cv.geo, (ci.dump).geom)
where c.nombre = 'CENTRO'