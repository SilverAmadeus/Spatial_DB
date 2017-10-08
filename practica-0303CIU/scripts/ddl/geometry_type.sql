--Author : Moreno Tagle Ivan Raphael  
--          Rodriguez Garcia Alan Julian
--Date : Friday, October 06, 2017 14:43:41
--Descripton: Adding geometries

--Table: Colonia 
SELECT addgeometrycolumn('practica3', 'colonia',  'geo', 0, 'POLYGON',2);

--Table: Area Verde
SELECT addgeometrycolumn('practica3', 'area_verde', 'geo', 0, 'MULTIPOLYGON',2);

--Table: Linea Metro
SELECT addgeometrycolumn('practica3', 'linea_metro', 'geo', 0, 'LINESTRING',2);

--Table: Linea Ferrea
SELECT addgeometrycolumn('practica3', 'linea_ferrea', 'geo', 0, 'MULTILINESTRING', 2);

--Table: Estacion
SELECT addgeometrycolumn('practica3', 'estacion', 'geo', 0, 'POINT',2);

--Table: Centro Interes
SELECT addgeometrycolumn('practica3', 'centro_interes', 'geo', 0, 'MULTIPOINT',2);