select Player, Squad, Gls, 
		Dense_rank() over(partition by squad order by Gls desc) as Место_по_голам,
		Gls - Lag(Gls) over(partition by squad order by Gls) as Разница,
		sum(gls) over(partition by squad) as "Голов в клубе"		
from player_data_25_26 pd 
order by squad, Место_по_голам, Gls desc