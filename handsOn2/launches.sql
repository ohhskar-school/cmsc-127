select Name,
	   round(126 / Capacity + (case
								   when 126 % Capacity > 5 then 1
									else 0
							   end)) as Launches
from Rockets