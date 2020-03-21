select sum(m.WinnerId = (select ID from Team where name = "OG")) as Wins,
       sum(m.WinnerId != (select ID from Team where name = "OG")) as Losses
from Match as M
where m.TeamSouthID = (select ID from Team where name = "OG") or
      m.TeamNorthID = (select ID from Team where name = "OG")