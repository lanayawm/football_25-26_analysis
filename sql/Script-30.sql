select Player, Pos, Squad
from player_data_25_26 pd 
where squad = 'Barcelona'
order by case 
			when Pos = 'FW' then 1
			when Pos = 'GK' then 2
			when Pos = 'DF' then 3
			else 4
		 end
