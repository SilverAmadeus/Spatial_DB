--Seleccionar las ciudades mas importantes de
--Rio de Janeiro

select c.name
from ciudad c
join estado e
on st_overlaps(e.geom,c.geom)
where e.name_1 = 'Rio de Janeiro';


"MACAE"
"RIO DAS OSTRAS"
"SAO FRANCISO"
"RIO DE JANEIRO"
"SAO GONCALO"
"CABO FRIO"
"ITAIPUACU"
"ARRAIAL DO CABO"
"SEPETIBA"
