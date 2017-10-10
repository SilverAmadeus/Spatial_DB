
select (q1.dump).path[1] as num_geometria,
	st_length(st_boundary((q1.dump).geom)) as longitud_total
from
  (select st_dump(av.geo) as dump, av.nombre
  from area_verde av
  where av.nombre = 'AV4')q1;


-----------------------------------------------------
1;9.75009902893913
2;3.89114
3;3.99803945565225
