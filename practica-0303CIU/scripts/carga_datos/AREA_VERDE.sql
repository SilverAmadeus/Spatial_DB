--Author : Moreno Tagle Ivan Raphael  
--          Rodriguez Garcia Alan Julian
--Date : Friday, October 06, 2017 13:43:41
-- Descripton: DATA FOR AREA_VERDE

INSERT INTO "AREA_VERDE"("AREA_VERDE_ID", "NOMBRE", geo)
values(1, 'AV1', st_geomfromtext(
        'MULTIPOLYGON(
        (
            (
                0 14.9542,
                0 13.0082, 
                3.04464 13.0082, 
                3.02349 14.9965, 
                0 14.9542
            )
        )
    )'
    )
);
-----
