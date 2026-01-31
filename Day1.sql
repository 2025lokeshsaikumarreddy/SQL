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
