select (CASE
			when (Early.Kills > Mid.Kills and Early.Kills > Late.Kills) then "Early"
			when (Mid.Kills > Early.Kills and Mid.Kills > Late.Kills) then "Mid"
			else "Late"
		END) as BestTime
from (select count(K.ID) as Kills
from Kill as K
where K.Killer_TeamID = (select ID from Team where name = "OG") and K.MinutesElapsed < 20) as Early,
(select count(K.ID) as Kills
from Kill as K
where K.Killer_TeamID = (select ID from Team where name = "OG") and K.MinutesElapsed >= 20 and K.MinutesElapsed < 40) as Mid,
(select count(K.ID) as Kills
from Kill as K
where K.Killer_TeamID = (select ID from Team where name = "OG") and K.MinutesElapsed >= 40) as Late