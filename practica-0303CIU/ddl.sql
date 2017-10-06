--Author : Moreno Tagle Ivan Raphael  
--          Rodriguez Garcia Alan Julian
--Date : Friday, October 06, 2017 14:43:41
-- Descripton: DDL Tables


-- TABLE: "AREA_VERDE" 
CREATE TABLE "AREA_VERDE"(
    "AREA_VERDE_ID"  numeric(10, 0)    NOT NULL,
    "NOMBRE"         varchar(30)       NOT NULL,
    CONSTRAINT "AREA_VERDE_PK" PRIMARY KEY ("AREA_VERDE_ID")
);

-- TABLE: "CENTRO_INTERES" 
CREATE TABLE "CENTRO_INTERES"(
    "CENTRO_INTERES_ID"  numeric(10, 0)    NOT NULL,
    "TIPO"               varchar(30)       NOT NULL,
    "NOMBRE"             varchar(30)       NOT NULL,
    CONSTRAINT "CENTRO_INTERES_PK" PRIMARY KEY ("CENTRO_INTERES_ID")
);

-- TABLE: "COLONIA" 
CREATE TABLE "COLONIA"(
    "COLONIA_ID"  numeric(10, 0)    NOT NULL,
    "NOMBRE"      varchar(30)       NOT NULL,
    "HABITANTES"  numeric(5, 0)     NOT NULL,
    CONSTRAINT "COLONIA_PK" PRIMARY KEY ("COLONIA_ID")
);

-- TABLE: "ESTACION" 
CREATE TABLE "ESTACION"(
    "ESTACION_ID"  numeric(10, 0)    NOT NULL,
    "NOMBRE"       varchar(30)       NOT NULL,
    CONSTRAINT "ESTACION_PK" PRIMARY KEY ("ESTACION_ID")
);

-- TABLE: "LINEA_FERREA" 
CREATE TABLE "LINEA_FERREA"(
    "LINEA_FERREA_ID"  numeric(10, 0)    NOT NULL,
    "NOMBRE"           varchar(30)       NOT NULL,
    CONSTRAINT "LINEA_FERREA_PK" PRIMARY KEY ("LINEA_FERREA_ID")
);
 
-- TABLE: "LINEA_METRO" 
CREATE TABLE "LINEA_METRO"(
    "LINEA_METRO_ID"  numeric(10, 0)    NOT NULL,
    "NOMBRE"          varchar(30)       NOT NULL,
    CONSTRAINT "LINEA_METRO_PK" PRIMARY KEY ("LINEA_METRO_ID")
);
