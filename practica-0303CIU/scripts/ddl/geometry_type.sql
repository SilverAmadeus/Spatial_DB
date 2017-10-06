--Author : Moreno Tagle Ivan Raphael  
--          Rodriguez Garcia Alan Julian
--Date : Friday, October 06, 2017 14:43:41
--Descripton: Adding geometries

--Table: Colonia 
SELECT addgeometrycolumn('practica3', 'COLONIA',  'geo', 0, 'POLYGON',2);

--Table: Area Verde
SELECT addgeometrycolumn('practica3', 'AREA_VERDE', 'geo', 0, 'MULTIPOLYGON',2);

--Table: Linea Metro
SELECT addgeometrycolumn('practica3', 'LINEA_METRO', 'geo', 0, 'LINESTRING',2);

--Table: Linea Ferrea
SELECT addgeometrycolumn('practica3', 'LINEA_FERREA', 'geo', 0, 'MULTILINESTRING', 2);

--Table: Estacion
SELECT addgeometrycolumn('practica3', 'ESTACION', 'geo', 0, 'POINT',2);

--Table: Centro Interes
SELECT addgeometrycolumn('practica3', 'CENTRO_INTERES', 'geo', 0, 'MULTIPOINT',2);