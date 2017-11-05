--Seleccionar las industrias de renombre con las que cuenta Brazil,
--ordenarlas por municipio y obtener el numero de las mismas


select e.name_1, i.text, count(*) as numero
from industria i
join estado e
on st_covers(e.geom,i.geom)
group by e.name_1, i.text;



"ParanÃ¡";"FACTORY";2
"ParanÃ¡";"REFINERY";1
"Rio Grande do Sul";"FACTORY";1
"Rio Grande do Sul";"INDUSTRIAL PLANT";1
"Santa Catarina";"FACTORY";1
