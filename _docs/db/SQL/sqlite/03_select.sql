select e.id, e.name, g.name, p.name
from employee           as e
	left join gender      as g on e.gender = g.code
	inner join prefecture as p on e.birthplace = p.code
order by e.id;