--Seleccionar las ciudades mas importantes de
--Rio de Janeiro

select q1.name
from estado e
join (select name,st_dump(geom) as dump
	from ciudad)q1
on st_covers(e.geom,(q1.dump).geom)
where e.name_1 = 'Rio de Janeiro';


"ITAPERUNA"
"CAMPOS"
"CAMPOS"
"TRES RIOS"
"NOVA FRIBURGO"
"TERESOPOLIS"
"RESENDE"
"PATI DO ALFERES"
"PETROPOLIS"
"GUAPIMIRIM"
"BARRA MANSA"
"SILVA JARDIM"
"RIO BONITO"
"TANGUA"
"SEROPEDICA"
"PORTO DAS CAIXAS"
"MARAPICU"
"IGUABA GRANDE"
"ITAGUAI"
"SAO PEDRO DA ALDEIA"
""
"ARARUAMA"
"BARRA"
"BURICHE"
"SANTA CRUZ"
"MARICA"
"PIRATININGA"
""
"GUARATIBA"
