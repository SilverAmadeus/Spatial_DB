select cv.nombre, ci.nombre, st_astext(ci.geo) as UBICACION
from colonia c
join colonia cv on st_touches(c.geo, cv.geo)
join centro_interes ci
on st_covers(cv.geo,ci.geo)
where ci.tipo = 'HOTEL'
and c.nombre = 'CENTRO';


-----------------------------------------
"HIDALGO";"SOL-B";"MULTIPOINT(5.84 2.96)"
"MORELOS";"SOL-B";"MULTIPOINT(18.0141 4.03995)"
"VILLA";"SOL-A";"MULTIPOINT(7.99217 14.9965)"


HIDALGO; SOL-B 5.84 2.96

insert into CENTRO_INTERES(CENTRO_INTERES_ID, TIPO, NOMBRE, geo)
values(20,'HOTEL','SOL-B',
	st_geomFromText(
		'MULTIPOINT(5.84 2.96)'
	)
);
