use moviesdb;
select * from movies;
desc movies;
select count(*) from movies where industry='Bollywood';
select * from movies where industry = 'Bollywood';
select * from movies where industry='Hollywood';
select count(*) from movies where industry='Hollywood';

#Unique Industries in movies table
select distinct(industry) from movies;
select * from movies where title like '%thor%';
select * from movies where title like "%america%";

select * from movies where studio='';
select * from movies where studio = NULL;


select * from movies where imdb_rating>=9;
select * from movies where imdb_rating>=6 and imdb_rating<=8;
select * from movies where imdb_rating between 6 and 8;
select * from movies where release_year IN (2011,2012,2013,2014);
select * from movies where release_year = 2012 or release_year=2014;


select * from movies where studio IN ("Marvel Studios","United Producers");

select * from movies where imdb_rating is null;
select * from movies where imdb_rating is not null;
select * from movies where industry='Bollywood';
select * from movies where industry='bollywood' order by imdb_rating desc LIMIT 5;
select * from movies where industry = 'hollywood' order by imdb_rating desc limit 5 offset 1;



select max(imdb_rating) from movies;
select min(imdb_rating) as min from movies;
select avg(imdb_rating) as avg_rating from movies;

select min(imdb_rating) as min_rating,max(imdb_rating) as max_rating, ROUND(avg(imdb_rating),1) as avg_rating
from movies;


select distinct(industry) from movies;
select industry,count(*) as total from movies group by industry;


select studio,count(*) as total from movies where studio!='' group by studio order by total desc;



select industry,count(*) as cnt,ROUND(avg(imdb_rating),2) as avg_rating from movies group by industry;


select * from movies;
select release_year,count(*) as cnt from movies group by release_year having cnt>2;


select * from movie_actor;
select * from actors;

select actor_id,name,birth_year,YEAR(curdate())-birth_year as age from actors;


select CURDATE();
select YEAR(CURDATE());
select *,YEAR(CURDATE())-birth_year from actors;

select * from financials;
select *,(revenue-budget) as profit from financials;


select *,IF(currency='USD',revenue*77,revenue)as revenueINR from financials;



select *,
(CASE
WHEN unit='Billions' then revenue*1000
WHEN unit='thousands' then revenue/1000
ELSE revenue
END) as rev_mln
 from financials;


select * from movies;
select * from financials;
select m.movie_id,title,imdb_rating,revenue,currency,unit from movies m JOIN 
financials f
ON m.movie_id=f.movie_id;


select f.movie_id,title,revenue,currency from movies m right join
financials f on m.movie_id=f.movie_id;


select m.movie_id,title,revenue,currency from movies m left join
financials f on m.movie_id=f.movie_id
UNION
select f.movie_id,title,revenue,currency from movies m right join
financials f on m.movie_id=f.movie_id;

select m.movie_id,title,revenue,currency from movies m right join
financials f on m.movie_id=f.movie_id ;

select movie_id,title,revenue,currency from movies m right join
financials f using(movie_id)



