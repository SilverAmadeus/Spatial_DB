select count(*), c.nombre from colonia c
join estacion e on st_covers(c.geo, e.geo)
group by c.nombre;