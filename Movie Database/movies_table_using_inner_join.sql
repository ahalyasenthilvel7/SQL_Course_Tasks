use student_db;
create table act_mast(
	act_id int auto_increment primary key,
    act_name varchar(100) unique
);
insert into act_mast(act_name)
select distinct act_name 
from movies
order by act_name;

select * from act_mast;

create table lang_mast(
	lang_id int auto_increment primary key,
    lang_name varchar(100) unique
);
insert into lang_mast(lang_name)
select distinct lang_name
from movies;

create table mov_det(
	rel_year int,
    mov_name varchar(100),
    act_id int,
    lang_id int,
    foreign key (act_id) references act_mast(act_id),
    foreign key (lang_id) references lang_mast(lang_id)
);
select * from mov_det;
insert into mov_det(rel_year,mov_name,act_id,lang_id)
select 
m.rel_year,
m.mov_name,
a.act_id,
l.lang_id
from movies as m
inner join act_mast as a
	on m.act_name = a.act_name
inner join lang_mast as l
	on m.lang = l.lang_name;

#1.Display all movie details from the table.
select 
m.rel_year,
m.mov_name,
a.act_name,
l.lang_name
from movies as m
inner join act_mast as a
	on m.act_name = a.act_name
inner join lang_mast as l
	on m.lang = l.lang_name;
    
#2.Display only the movie_name and actor_name for all movies.
select
m.mov_name,
a.act_name
from movies as m
inner join act_mast as a
	on m.act_name = a.act_name;
    
#3.Show all movies released in the year 2020.
select 
m.rel_year,
m.mov_name,
a.act_name,
l.lang_name
from movies as m
inner join act_mast as a
	on m.act_name = a.act_name
inner join lang_mast as l
	on m.lang = l.lang_name
where rel_year = '2020';

#4. Retrieve all movies acted by a specific actor (e.g., “Vijay”).
select 
m.rel_year,
m.mov_name,
a.act_name,
l.lang_name
from movies as m
inner join act_mast as a
	on m.act_name = a.act_name
inner join lang_mast as l
	on m.lang = l.lang_name
where a.act_name = 'vijay';

#6. Show all movies in the Tamil language.
select 
m.rel_year,
m.mov_name,
a.act_name,
l.lang_name
from movies as m
inner join act_mast as a
	on m.act_name = a.act_name
inner join lang_mast as l
	on m.lang = l.lang_name
where l.lang_name = 'Tamil';

#7. Display distinct movie release languages.
select distinct
m.mov_name,
l.lang_name
from movies as m
inner join lang_mast as l
	on m.lang = l.lang_name;
    
#8. Show unique actor names from the table.
select distinct
a.act_name
from movies as m
inner join act_mast as a
	on m.act_name = a.act_name;

#9. Show all movies whose name starts with the letter ‘K’.
select 
m.rel_year,
m.mov_name,
a.act_name,
l.lang_name
from movies as m
inner join act_mast as a
	on m.act_name = a.act_name
inner join lang_mast as l
	on m.lang = l.lang_name
where m.mov_name = 'K%';

#10. Display all movies released between 2010 and 2020.
select 
m.rel_year,
m.mov_name,
a.act_name,
l.lang_name
from movies as m
inner join act_mast as a
	on m.act_name = a.act_name
inner join lang_mast as l
	on m.lang = l.lang_name
where m.rel_year between 2010 and 2020;

#11. Show all movies sorted by release_year in ascending order.
select 
m.rel_year,
m.mov_name,
a.act_name,
l.lang_name
from movies as m
inner join act_mast as a
	on m.act_name = a.act_name
inner join lang_mast as l
	on m.lang = l.lang_name
order by m.rel_year ;

#12. Show all movies sorted by movie_name in alphabetical order.
select
m.rel_year,
m.mov_name,
a.act_name,
l.lang_name
from movies as  m
inner join act_mast as a
	on m.act_name = a.act_name
inner join lang_mast as l
	on m.lang = l.lang_name
order by m.mov_name;

#13.List the latest 10 movies based on release_year.
select
m.rel_year,
m.mov_name,
a.act_name,
l.lang_name
from movies as  m
inner join act_mast as a
	on m.act_name = a.act_name
inner join lang_mast as l
	on m.lang = l.lang_name
order by m.rel_year desc
limit 10;

#14.	List old (earliest) 10 movies.
select
m.rel_year,
m.mov_name,
a.act_name,
l.lang_name
from movies as  m
inner join act_mast as a
	on m.act_name = a.act_name
inner join lang_mast as l
	on m.lang = l.lang_name
order by m.rel_year
limit 10;

#15. Show movies where actor_name contains the word “Khan”.
select
m.rel_year,
m.mov_name,
a.act_name,
l.lang_name
from movies as  m
inner join act_mast as a
	on m.act_name = a.act_name
inner join lang_mast as l
	on m.lang = l.lang_name
where a.act_name like '%Khan%';

#16. Count the total number of movies in the table.
select count(*)
from mov_det;

#17. Count how many movies are released in each language.
select l.lang_name,count(m.mov_name)
from movies as m
inner join lang_mast as l
    on m.lang = l.lang_name
group by l.lang_name;

#18. Find the number of movies acted by each actor
select a.act_name,count(m.mov_name)
from movies as m
inner join act_mast as a
	on m.act_name = a.act_name
group by a.act_name;

#20. Find how many movies were released each year.
select m.rel_year,count(m.mov_name)
from movies as m
group by m.rel_year;

#21. Identify the year with the highest number of movie releases.
select m.rel_year,count(m.mov_name)
from movies as m
group by m.rel_year
order by count(m.mov_name) desc
limit 1;

#22. Find the actor who acted in the most movies.
select a.act_name, count(m.mov_name)
from movies as m
inner join act_mast as a
	on m.act_name = a.act_name
group by a.act_name
order by count(m.mov_name) desc
limit 1;

#24. List languages that have more than 100 movies.
select l.lang_name,count(*)
from movies as m
inner join lang_mast as l
	on m.lang = l.lang_name
group by l.lang_name
having count(*)>100;

#25. List actors who acted in more than 10 movies.
select a.act_name,count(m.mov_name)
from movies as m
inner join act_mast as a
	on m.act_name = a.act_name
group by act_name
having count(m.mov_name)>10;

#27. Find years where more than 50 movies were released.
select m.rel_year,count(m.mov_name)
from movies as m
group by m.rel_year
having count(m.mov_name)>50;

#28. List actors who have worked in more than 3 languages.
select a.act_name,count(distinct l.lang_name)
from movies as m
inner join act_mast as a
	on m.act_name = a.act_name
inner join lang_mast as l
	on m.lang = l.lang_name
group by a.act_name
having count(distinct l.lang_name)>3;
	











    

	


