select Player, Squad, PK, PKatt, PKatt - PK as Незабитых
from players_data_25_26 pd
where Nation = es ESP
order by PKatt desc