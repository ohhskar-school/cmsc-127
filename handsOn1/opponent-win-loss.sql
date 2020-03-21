select t.Name as TeamName,
	   sum(m.WinnerId = (select ID from Team where name = "OG")) as Wins,
	   sum(m.WinnerId != (select ID from Team where name = "OG")) as Losses
from Team as t, Match as M
where m.TeamNorthID = t.ID and m.TeamSouthID = (select ID from Team where name = "OG") or
	  m.TeamSouthID = t.ID and m.TeamNorthID = (select ID from Team where name = "OG")
group by t.Name