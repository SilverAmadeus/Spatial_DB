--Seleccionar el estado con mas municipios

select e1.name_1, count(*) max_muni
from estado e1
join municipio m1
on st_covers(e1.geom,m1.geom)
group by e1.name_1
having count(*) =
                (select max(municipios)
                from
                  (select e.name_1, count(*) as municipios
                    from estado e
                    join municipio m
                    on st_covers(e.geom,m.geom)
                    group by e.name_1
                  )q1
                );

"Minas Gerais" 797
