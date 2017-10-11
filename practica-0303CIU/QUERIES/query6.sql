select st_makeline(st_centroid(c.union), st_endpoint(st_geometryN(lf.geo, 1))), 'EXTENSION' as nombre from practica3.linea_ferrea lf,
(
select st_union(practica3.colonia.geo) as union from practica3.colonia
    where practica3.colonia.nombre = 'SUAREZ' or practica3.colonia.nombre ='CENTRO'
) c
    where lf.nombre = 'FERREA A';


"LINESTRING(15.9810104289707 12.6508858275417,15.9421 16.9636)";"EXTENSION"    
