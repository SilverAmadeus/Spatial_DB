--Seleccionar el nombre del estado mas grande de Brazil
select name_1, st_area(geom)
from estado
where st_area(geom) = (select max(area)
                          from
                          (select e.gid, st_area(e.geom) as area
                          from estado e
                          group by e.gid)q1);

"Amazonas";127.738824698412
