select c.nombre, q1.nombre, st_area((q1.dump).geom)
from colonia c join (
	select st_dump(geo) as dump, nombre from area_verde av
	) q1
on st_relate((q1.dump).geom, c.geo, '2FF10F212')
or st_relate((q1.dump).geom, c.geo, '2FF11F212')
or st_relate((q1.dump).geom, c.geo, '2FF1FF212');
-- UNION de st_relate

-- 8 registros