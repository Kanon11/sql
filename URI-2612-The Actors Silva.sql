--kc

select distinct mn.id, mn.name from(select m.id,m.name from (select id from genres where description='Action') g left join movies m on m.id_genres=g.id) mn inner join
(select mp.id_movies,id_actors from (select a.id,a.name from actors a where (a.name='Marcelo Silva' or a.name='Miguel Silva')) a inner join movies_actors mp on a.id=mp.id_actors) ma
on mn.id=ma.id_movies
