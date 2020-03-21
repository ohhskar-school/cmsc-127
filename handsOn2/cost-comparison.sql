select T.Name as UseThis, U.Name as InsteadOf, U.TotalCostsInMillions - T.TotalCostsInMillions as Savings
from (select R.Name, R.Launches, R.Launches * S.CostInMillions as TotalCostsInMillions
	from (select Name,
	   round(126 / Capacity + (case
								   when 126 % Capacity > 5 then 1
									else 0
							   end)) as Launches
	from Rockets) as R, Rockets as S
	where R.Name = S.Name) as T,
	(select R.Name, R.Launches, R.Launches * S.CostInMillions as TotalCostsInMillions
	from (select Name,
	   round(126 / Capacity + (case
								   when 126 % Capacity > 5 then 1
									else 0
							   end)) as Launches
	from Rockets) as R, Rockets as S
	where R.Name = S.Name) as U
where T.Name != U.Name
