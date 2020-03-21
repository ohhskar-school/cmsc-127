select Location, count(Location) as DeathCount
from Kill as K
where K.Death_TeamID = (select ID from Team where name = "OG")
group by Location
order by count(Location) desc