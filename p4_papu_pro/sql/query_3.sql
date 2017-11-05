--Seleccionar el nombre del aeropuerto que se encuentra en el
-- Distrito Federal

select p.name
from estado e
join puerto p
on st_covers(e.geom,e.geom)
where e.name_1 = 'Distrito Federal';


"PRESIDENTE JUSCELINO KUBITSCHEK";22
