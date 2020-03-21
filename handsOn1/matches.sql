select distinct m.id
from Match as m, Team as t
where (t.ID = m.TeamNorthID or t.ID = m.TeamSouthID) and t.name = "OG"