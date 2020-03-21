select count(distinct K.ID) as Kills
from Kill as K
where K.Killer_TeamID = (select ID from Team where name = "OG") and 
	  K.Death_TeamID = (select ID from Team where name = "LGD")