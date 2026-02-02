#1. Show all the movies with their language names
select * from movies;
select * from languages;
select m.language_id,title from movies m left join  languages l on m.language_id=l.language_id;
#2. Show all Telugu movie names (assuming you don't know the language id for Telugu)
select title from movies m join languages l on m.language_id=l.language_id where l.name='Telugu';
#3. Show the language and number of movies released in that language
select l.name,count(*) as cnt from movies m join languages 
l on m.language_id=l.language_id group by l.language_id
