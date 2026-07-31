use student_db;

# Create Actor Master Table
create table act_mast(
	act_id int auto_increment primary key,
    act_name varchar(100) unique
);

# Insert Unique Actor Names into Actor Master Table
insert into act_mast(act_name)
select distinct act_name 
from movies
order by act_name;

# View Actor Master Table
select * from act_mast;

# Create Language Master Table
create table lang_mast(
	lang_id int auto_increment primary key,
    lang_name varchar(100) unique
);

# Insert Unique Language Names into Language Master Table
insert into lang_mast(lang_name)
select distinct lang_name
from movies;

# View Language Master Table
select * from lang_mast;

# Create Movie Details Table(normalized table)
create table mov_det(
	rel_year int,
    mov_name varchar(100),
    act_id int,
    lang_id int,
    dir_name varchar(100),
    foreign key (act_id) references act_mast(act_id),
    foreign key (lang_id) references lang_mast(lang_id)
);

# View Empty Movie Details Table
select * from mov_det;
 
# Insert the movie information from the main movies table into the normalized mov_det table using INNER JOIN.
insert into mov_det(rel_year,mov_name,act_id,lang_id,dir_name)
select 
m.rel_year,
m.mov_name,
a.act_id,
l.lang_id,
m.dir_name
from movies as m
inner join act_mast as a
	on m.act_name = a.act_name
inner join lang_mast as l
	on m.lang_name= l.lang_name;

#1.Display all movie details from the table.
select m.rel_year,
m.mov_name,
a.act_name,
l.lang_name,
m.dir_name
from mov_det as m
inner join act_mast as a
	on m.act_id = a.act_id
inner join lang_mast as l
	on m.lang_id= l.lang_id;
    
#2.Display only the movie_name and actor_name for all movies.
select
m.mov_name,
a.act_name
from mov_det as m
inner join act_mast as a
	on m.act_id = a.act_id;
    
    
#3.Show all movies released in the year 2020.
select mov_name,rel_year
from mov_det as m
where rel_year = '2020';

#4. Retrieve all movies acted by a specific actor (e.g., “Vijay”).
select 
mov_name,
a.act_name
from mov_det as m
inner join act_mast as a
	on m.act_id = a.act_id
where a.act_name = 'Vijay';

#5.	List movies directed by a particular director.
select *
from mov_det
where dir_name = 'Atlee Kumar';

#6. Show all movies in the Tamil language.
select 
m.mov_name,
l.lang_name
from mov_det as m
inner join lang_mast as l
	on m.lang_id = l.lang_id
where l.lang_name = 'Tamil';

#7. Display distinct movie release languages.
select distinct
    l.lang_name
from lang_mast AS l
order by l.lang_name;
    
#8. Show unique actor names from the table.
select distinct
a.act_name
from act_mast as a
order by a.act_name;

#9. Show all movies whose name starts with the letter ‘K’.
select 
m.mov_name
from mov_det as m
where m.mov_name like'K%';

#10. Display all movies released between 2010 and 2020.
select 
m.mov_name,
m.rel_year
from mov_det as m
where m.rel_year between 2010 and 2020;

#11. Show all movies sorted by release_year in ascending order.
select 
m.mov_name,
m.rel_year
from mov_det as m
order by m.rel_year ;

#12. Show all movies sorted by movie_name in alphabetical order.
select
m.mov_name
from mov_det as  m
order by m.mov_name;

#13.List the latest 10 movies based on release_year.
select
rel_year,
mov_name
from mov_det 
order by rel_year desc
limit 10;

#14. List old (earliest) 10 movies.
select
rel_year,
mov_name
from mov_det as m
order by m.rel_year
limit 10;

#15. Show movies where actor_name contains the word “Khan”.
select
mov_name,
a.act_name
from mov_det as m
inner join act_mast as a
	on m.act_id = a.act_id
where a.act_name like '%Khan%';

#16. Count the total number of movies in the table.
select count(*)
from mov_det;

#17. Count how many movies are released in each language.
select distinct lang_name,count(*)
from mov_det as m
inner join lang_mast as l
    on m.lang_id = l.lang_id
group by l.lang_name;

#18. Find the number of movies acted by each actor
select distinct a.act_name,count(mov_name)
from mov_det as m
inner join act_mast as a
	on m.act_id = a.act_id
group by a.act_name;

#19. Find the number of movies directed by each director.
select dir_name,count(mov_name)
from mov_det 
group by dir_name; 

#20. Find how many movies were released each year.
select distinct rel_year,count(mov_name)
from mov_det as m
group by m.rel_year;

#21. Identify the year with the highest number of movie releases.
select m.rel_year,count(mov_name)
from mov_det as m
group by m.rel_year
order by count(m.mov_name) desc
limit 1;

#22. Find the actor who acted in the most movies.
select a.act_name, count(mov_name)
from mov_det as m
inner join act_mast as a
	on m.act_id = a.act_id
group by a.act_name
order by count(m.mov_name) desc
limit 1;

#23. Find the director with the maximum number of films.
select dir_name,count(mov_name)
from mov_det
group by dir_name
order by count(mov_name) desc
limit 1;

#24. List languages that have more than 100 movies.
select l.lang_name,count(*)
from mov_det as m
inner join lang_mast as l
	on m.lang_id = l.lang_id
group by l.lang_name
having count(*)>100;

#25. List actors who acted in more than 10 movies.
select a.act_name,count(mov_name)
from mov_det as m
inner join act_mast as a
	on m.act_id = a.act_id
group by a.act_name
having count(m.mov_name)>10;

#26. List directors who directed at least 5 movies.
select dir_name,count(mov_name)
from mov_det
group by dir_name
having count(mov_name)>=5;

#27. Find years where more than 50 movies were released.
select m.rel_year,count(mov_name)
from mov_det as m
group by m.rel_year
having count(m.mov_name)>50;

#28. List actors who have worked in more than 3 languages.
select a.act_name,count(distinct l.lang_name)
from mov_det as m
inner join act_mast as a
	on m.act_id = a.act_id
inner join lang_mast as l
	on m.lang_id = l.lang_id
group by a.act_name 
having count(distinct l.lang_name)>3;


	











    

	


