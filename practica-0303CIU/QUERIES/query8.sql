
select lm.nombre, count(*) as num_estaciones
from linea_metro lm
join estacion e
on st_covers(lm.geo,e.geo)
group by lm.nombre
having count(*) = (
                  select max(cuenta)
                  from (
                    select count(*) as cuenta
                    from linea_metro lm1
                    join estacion e1
                    on st_covers(lm1.geo,e1.geo)
                    group by lm1.nombre
                  ) q1
              );

--------------------------------------------------------------
"AZUL"	;9
"CAFE"	;9
