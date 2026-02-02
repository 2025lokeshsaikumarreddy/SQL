#1. How many movies were released between 2015 and 2022
select release_year,count(*) as cnt from movies group by release_year order by release_year desc;
select count(*) from movies where release_year between 2015 and 2022;
#2. Print the max and min movie release year
select max(release_year),min(release_year) from movies;
#3. Print each year along with the number of movies released in that year, 
#starting from the most recent year
select release_year,count(*) as cnt from movies group by release_year order by release_year desc;
