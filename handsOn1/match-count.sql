select t.Name, count(t.Name) as MatchCount
from Team as t, Match as M
where (m.TeamNorthID = t.ID and m.TeamSouthID = (select ID from Team where name = "OG")) or
	  (m.TeamSouthID = t.ID and m.TeamNorthID = (select ID from Team where name = "OG"))
group by t.Name