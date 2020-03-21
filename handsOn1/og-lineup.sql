select e.name
from eAthlete as e, team as t, Membership as m
where e.ID = m.eAthleteID and t.ID = m.TeamID and t.name = "OG"