select * from matches;

select * from deliveries;

copy matches from 'C:\Program Files\PostgreSQL\15\data\IPL_matches.csv' delimiter ',' csv header;

-- 6 solution 
Select * from matches limit 20;

-- 5 solution 
Select * from deliveries limit 20;

-- 7 solution
select * from matches where date ='2013-05-02';

-- 8 solution
select * from matches where result_margin > 100;

-- 9 solution
select * from matches where result like 'tie' order by date desc;

-- 10 solution
select count(distinct city) from matches;
