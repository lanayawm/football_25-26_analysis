select Player, Squad, `G+A`, MP, (`G+A`) / MP as `Стата за матч`, `On-Off` + PPM as Импакт,
	case
		when (`G+A`) / MP > 0.8 and `On-Off` + PPM > 0 then 'Жесткий'
		when (`G+A`) / MP > 0.45 and `On-Off` + PPM > 0 then 'Полезный'
		when (`G+A`) / MP > 0.25 and `On-Off` + PPM > 0 then 'Слабовато'
		when (`G+A`) / MP > 0 and `On-Off` + PPM > 0 then 'Безимпактовый'
		when (`G+A`) / MP < 0.3 and `On-Off` + PPM < 0 then 'Руинер'
		when (`G+A`) / MP > 0.3 and `On-Off` + PPM < 0 then 'Эгоист'
		else 'Калыч'
	end as 'Импакт в атаке'
from player_data_25_26 pd 
-- where Pos in ('FW', 'FW,MF', 'MF,FW') and MP > 5 --
where Squad = 'Barcelona'
order by Импакт desc
