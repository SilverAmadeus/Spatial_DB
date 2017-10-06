--Author : Moreno Tagle Ivan Raphael  
--          Rodriguez Garcia Alan Julian
--Date : Friday, October 06, 2017 14:43:41
--Descripton: Adding geometries

--Table: Area_Verde
select addgeometrycolumn('practica3','area_verde','geo',0,'multipolygon',2);

--Table: Centro_Interes
select addgeometrycolumn('practica3','centro_interes','geo',0,'multipoint',2);

--Table Colonia:
select addgeometrycolumn('practica3','colonia','geo',0,'polygon',2);

--Table: Estacion
select addgeometrycolumn('practica3','estacion','geo',0,'point',2);

--Table: Linea_Ferrea
select addgeometrycolumn('practica3','linea_ferrea','geo',0,'multilinestring',2);

--Table: Linea_Metro
select addgeometrycolumn('practica3','linea_metro','geo',0,'linestring');

