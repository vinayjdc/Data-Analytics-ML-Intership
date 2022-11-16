/* 1. Create a table named ‘matches’ with appropriate data types for columns */
create table matches (id_ int, city varchar, date_ date, player_of_match varchar, venue varchar, neutral_venue int,
						team1 varchar, team2 varchar, toss_winner varchar, toss_decision varchar, winner varchar,
						result_ varchar, result_margin int, eliminator varchar, method_ varchar, umpire1 varchar,
						umpire2 varchar);
						
/* 2. Create a table named ‘deliveries’ with appropriate data types for columns */
create table deliveres (id_ int, inning int, over_ int, ball int, batsman varchar, non_strike varchar, bowler varchar,
						batsman_runs int, extra_runs int, total_runs int, is_wicket int, dismissal_kind varchar,
						player_dismissed varchar, fielder varchar, extras_type varchar, batting_team varchar,
						bowling_team varchar);
            
/* 3. Import data from CSV file ’IPL_matches.csv’ attached in resources to ‘matches’ */		
copy matches from 'C:\Program Files\PostgreSQL\15\data\IPL_matches.csv' delimiter ',' csv header;

/* 4. Import data from CSV file ’IPL_Ball.csv’ attached in resources to ‘deliveries’ */
copy deliveres from 'C:\Program Files\PostgreSQL\15\data\IPL_Ball.csv' delimiter ','csv header;

/* 5. Select the top 20 rows of the deliveries table. */ 
Select * from deliveries limit 20;

-- 6. Select the top 20 rows of the matches table.
Select * from matches limit 20;

-- 7. Fetch data of all the matches played on 2nd May 2013.
select * from matches where date ='2013-05-02';

-- 8. Fetch data of all the matches where the margin of victory is more than 100 runs.
select * from matches where result_margin > 100;

-- 9. Fetch data of all the matches where the final scores of both teams tied and order it in descending order of the date.
select * from matches where result like 'tie' order by date desc;

-- 10. Get the count of cities that have hosted an IPL match.
select count(distinct city) from matches;
