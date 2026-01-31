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
select * from movies where studio = NULL