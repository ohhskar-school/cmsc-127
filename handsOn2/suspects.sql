select distinct P.Name as Suspects
from Person as P,
	 Location_History as H,
	 (select Longitude, Latitude from Location where Name = "UP" or Name = "IT Park" or Name = "Harrison Park") as L
where P.ID = H.PersonID and H.Longitude = L.Longitude and H.Latitude = L.Latitude
