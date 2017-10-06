--LINEA FERREA A

insert into LINEA_FERREA(LINEA_FERREA_ID, NOMBRE, GEO)
values(1,'FERREA A',
	st_GeomFromText(
		'MULTILINESTRING(
			(
				1.01488	17.8942,
				11.0791	16.9636,
				15.9421	16.9636
			),
			(
				15.9421	16.9636,
				23.9554	18,
				27 15.0388
			),
			(
				15.9421	16.9636,
				20.5301	14.4677,
				25.0125	11.9295,
				27	11.9718
			)
		)'
	)
);

--FERREA B
insert into LINEA_FERREA(LINEA_FERREA_ID, NOMBRE, GEO)
values(2,'FERREA B',
	st_GeomFromText(
		'MULTILINESTRING(
			(
				1.98747	3.9765,
				4.14409	1.12103,
				11 1,
				16.0266	1.05758
			),
			(
				16.0266	1.05758,
				23.9765	4.94947,
				26.9789	4.92832
			),
			(
				16.0266	1.05758,
				24.9702	0.994125,
				26.9366	3.00353
			)
		)'
	)
);