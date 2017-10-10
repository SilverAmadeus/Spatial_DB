with q1 as(
  select 'R1'as nombre,
    st_envelope(st_makebox2d(
        'POINT(6 6)'::geometry,
        'POINT(14 14)'::geometry
      )
    ) as geo
  union
  select 'R2'as nombre,
    st_envelope(st_makebox2d(
        'POINT(15 15)'::geometry,
        'POINT(27 27)'::geometry
      )
    ) as geo
),q2 as(
  select st_dump(ci.geo) as dump, ci.nombre, ci.tipo
  from centro_interes ci
)
select q2.nombre, q2.tipo, q1.nombre
from  q1
join q2
on st_covers(q1.geo,(q2.dump).geom)
where q1.nombre = 'R1'
union
select q2.nombre, q2.tipo, q1.nombre
from  q1
join q2
on st_covers(q1.geo,(q2.dump).geom)
where q1.nombre = 'R2';


-------------------------------------------------
"CENTRO";"CAMPAMENTO MILITAR";"R1"
"CENTRO";"UNIVERSIDAD";"R1"
"ARTE";"MUSEO";"R2"
"HISTORIA";"MUSEO";"R1"
"SUR";"HOSPITAL";"R1"
