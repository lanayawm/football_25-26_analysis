select player, squad, PKA, PKsv, Rk_stats_keeper, Starts_stats_keeper, 
(Save_per/100 + CS_per/100 + PKA / (PKA + PKsv) * 2) as Ars_GK_Points,
	   case 
	   	when (Save_per/100 + CS_per/100 + PKA / (PKA + PKsv) * 2) <= 1 then 'Bad'
	   	when (Save_per/100 + CS_per/100 + PKA / (PKA + PKsv) * 2) <= 2 then 'Good'
	   	when (Save_per/100 + CS_per/100 + PKA / (PKA + PKsv) * 2) <= 4 then 'Great'
	   end as GK_Level	   
from player_data_25_26 pd 
where Pos = 'GK' and
	  Starts_stats_keeper > 9
order by Ars_GK_Points DESC