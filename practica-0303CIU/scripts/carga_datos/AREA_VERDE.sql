--Author : Moreno Tagle Ivan Raphael  
--          Rodriguez Garcia Alan Julian
--Date : Friday, October 06, 2017 13:43:41
-- Descripton: DATA FOR AREA_VERDE

-- AV1

INSERT INTO AREA_VERDE(AREA_VERDE_ID, NOMBRE, geo)
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
-- AV2

INSERT INTO AREA_VERDE(AREA_VERDE_ID, NOMBRE, geo)
values(2, 'AV2', st_geomfromtext(
        'MULTIPOLYGON(
        (
            (
                11.946 17.3866,
                14.9695 17.5135, 
                15.0117 15.9483, 
                12.0305 15.9694, 
                11.946 17.3866
            )
        )
    )'
    )
);

-- AV3

INSERT INTO AREA_VERDE(AREA_VERDE_ID, NOMBRE, geo)
values(3, 'AV3', st_geomfromtext(
        'MULTIPOLYGON(
        (
            (
                17.0204 15.9694,
                17.0415 15.0388,
                20.0016 14.9965,
                20.0439 15.9906,
                17.0204 15.9694
            )
        )
    )'
    )
);

-- AV4

INSERT INTO AREA_VERDE(AREA_VERDE_ID, NOMBRE, geo)
values(4, 'AV4', st_geomfromtext(
        'MULTIPOLYGON(
        (
            (
                20.0227 8.0376,
                22.9828 8.05875,
                22.9616 9.9624,
                19.9593 9.92009,
                20.0227 8.0376
            )
        ),
        (
            (
                20.0227 6.00705,
                20.0227 6.98002,
                20.9953 6.98002,
                20.9953 6.00705,
                20.0227 6.00705
            )
        ),
        (
            (
                21.989  7.00118,
                23.0039 7.00118,
                23.0039 5.9859,
                22.0313 6.00705,
                21.989  7.00118
            )
        )

    )'
    )
);

-- AV5

INSERT INTO AREA_VERDE(AREA_VERDE_ID, NOMBRE, geo)
values(5, 'AV5', st_geomfromtext(
        'MULTIPOLYGON(
        (
            (
                14.9906 3.00353,
                13.9969 3.02468,
                13.9969 5.9859,
                14.0392 7.00118,
                15.0117 6.98002,
                14.9906 3.00353

            )
        )
    )'
    )
);

-- AV6

INSERT INTO AREA_VERDE(AREA_VERDE_ID, NOMBRE, geo)
values(6, 'AV6', st_geomfromtext(
        'MULTIPOLYGON(
        (
            (
                11.946  1.75558,
                11.9883 0.232667,
                9.93735 0.274971,
                10.0008 1.79788,
                11.946  1.75558

            )
        )
    )'
    )
);

-- AV7

INSERT INTO AREA_VERDE(AREA_VERDE_ID, NOMBRE, geo)
values(7, 'AV7', st_geomfromtext(
        'MULTIPOLYGON(
        (
            (
                3.02349 4.99177,
                3.04464 7.00118,
                5.01096 4.92832,
                3.02349 4.99177
            )
        )
    )'
    )
);

-- AV8

INSERT INTO AREA_VERDE(AREA_VERDE_ID, NOMBRE, geo)
values(8, 'AV8', st_geomfromtext(
        'MULTIPOLYGON(
        (
            (
                6.99843 7.953,
                8   8,
                8.96476 8.01645,
                9.00705 6.95887,
                8   7,
                6.95615 7.00118,
                6.99843 7.953
            )
        )
    )'
    )
);

-- AV9

INSERT INTO AREA_VERDE(AREA_VERDE_ID, NOMBRE, geo)
values(9, 'AV9', st_geomfromtext(
        'MULTIPOLYGON(
        (
            (
                12.982  10.0259,
                12.9608 8.98942,
                15.0329 8.98942,
                15.0329 9.98355,
                12.982  10.0259
            )
        )
    )'
    )
);
