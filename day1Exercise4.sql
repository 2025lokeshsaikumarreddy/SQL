#1. Print profit % for all the movies
select * from financials;
select *,
CASE
WHEN budget = '' or budget=NULL then NULL
ELSE ROUND(((revenue-budget)/budget)*100,2)
END as profit_percent 
from financials order by profit_percent;


select count(*) from financials group by currency;