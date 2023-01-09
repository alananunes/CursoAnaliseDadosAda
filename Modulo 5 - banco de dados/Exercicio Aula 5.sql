
create database cinema

create table filmes (
	id_filmes		integer,
	nm_filmes		varchar,
	categoria		varchar,
	duracao			integer,
	lancamento      date
)

select *  from filmes f order by id_filmes

insert into filmes values 
(1, 'como eu era antes de voce', 'drama', 110 ,'2016-06-16'),
(2, 'para sempre', 'romance', 104 ,'2012-06-07'),
(3, 'arremessando alto', 'drama', 117 ,'2022-06-03'),
(4, 'king richard', 'drama', 144 ,'2021-12-02'),
(5, 'no ritmo do coração', 'drama', 111 ,'2021-09-23')

delete from filmes where id_filmes = 6

alter table filmes add column verificar bool

update filmes set verificar = true where categoria = 'drama'

select id_filmes, nm_filmes, categoria  from filmes f where EXTRACT(YEAR FROM lancamento)  <= '2016' order by id_filmes


select nm_filmes  from filmes f where EXTRACT(YEAR FROM lancamento)  < '2022' order by id_filmes


select  id_filmes, nm_filmes, categoria, duracao, lancamento  from filmes f where categoria  = 'romance'
