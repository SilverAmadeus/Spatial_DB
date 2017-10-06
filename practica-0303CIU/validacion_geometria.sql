--Author : Moreno Tagle Ivan Raphael  
--          Rodriguez Garcia Alan Julian
--Date : Friday, October 06, 2017 14:43:41
--Descripton: Geometry validation (add)


-- Table: Area_Verde
alter table area_verde add constraint geometry_valid_check check (st_isValid(geo));

--Table: Centro_Interes
alter table centro_interes add constraint geometry_valid_check check (st_isValid(geo));

--Table: Colonia
alter table colonia add constraint geometry_valid_check check (st_isValid(geo));

--Table: Estacion
alter table estacion add constraint geometry_valid_check check (st_isValid(geo));

--Table: Linea_Ferrea
alter table linea_ferrea add constraint geometry_valid_check check (st_isValid(geo));

--Table: Linea_Metro
alter table linea_metro add constraint geometry_valid_check check (st_isValid(geo));
