# MySql thoughts

## Primitive types

`Numeric`
* Int ( TinyInt, SmallInt, Int, Mediumint ,BigInt)
* Money    (Decimal, Float , Double, Real)
* Logical  (Bit, Boolean)
***
`Date`
Date, DateTime, TimeStamp, Time, Year
***
`Char`
* Char (Char , VarChar)
* Text (TinyText, Text, MediumText, LongText)
* Binary (TinyBlob,Blob,MediumBlob,LongBlob)
* Collection (Enum, Set)
***
`Geometry`
Geometry, Point, Polygon, Multipolygon	


## Relational Model

- Table == entities

- Data (default, 'Godofredo', '1984-01-02', 'M', '78 .5 ',' 1.83 ',' Brazil ') == attributes

- Relationships == maintain mutual interests

- Types of relationships == one to one, one to many and many to many (It can occur two entities relate)

- Cardinality = a user can watch "n" courses or a course can be attended by "n" users

- From Cardinality, a relationship can be classified	
			 
- Every entity has a collection of defined attributes, these attributes will compose the data that makes up each of the elements that are within that entity
Primary Key == specific attribute that identifies tuples, in which none of the tuples has the same primary key
Foreign KEY == primary key from somewhere that came into another primary key	


## Language

* DDL is DATA DEFINITION LANGUAGE = create database, creat table, alter table, drop table
* DML is DATA MODIFY LANGUAGE = insert into , update, delete, truncate, select 
* DQL is DATA QUERY LANGUAGE = select

## MySql Workbench Commands 
```mysql
-- Command to create a database
 create database nome;  -- Command DDL = date definition language
 
-- Command to create tables ::
 create table nome();  -- Command DDL
 
-- Command to delete existing databases ::
 drop database nome;
 
 -- Putting a field in back, enables the accents for the specific field eg: `gnôle`
 ```
 
## Constraints
Constraints are rules or parameters that define for creation in the database
```mysql
-- Constraints Types 
NOT NULL                -- field where the user will fill in something
default character set   -- character definition
default charset         -- default character setting
AUTO_INCREMENT          -- separates the data from person 1, person 2, person 3 ...
```
 
## Starting a databse with Portuguese language standards
```mysql
 
 create database cadastro
 default character set utf8
 default collate	utf_general_ci;  
 create table pessoas (
   id int NOT NULL ,                                         
   nome varchar(30) NOT NULL,                                 
   nascimento date,                                          
   sexo enum('M','F'), -- 'set' or 'enum' is for set answers with just one character
   peso decimal (5,2), -- in 5 digits, with 3 digits before the comma and two digits after the comma
   altura decimal(3,2),-- in 3 digits, with 1 digit before the comma and 2 digits after the comma
   nacionalidade varchar(20) default 'Brasil'            
   PRIMARY KEY (id)                                 
 )default charset = utf8;
```

## Insert Data
```mysql
 
insert into -- Command DML == date manipulation language

insert into pessoas
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
values 
(default,'Godofredo','1984-01-02','M','78.5','1.83','Brasil');
select * from pessoas;            
  
--another way to do insert
					    
insert into pessoas values        -- only if the table people are equal to the values entered 
('1', 'Godofredo', '1984-01-02', 'M', '78.5' , '1.83' , 'Brasil'),
('2', 'Ana'      , '1999-04-06', 'F', '52.3' ,'1.45'  , 'Portugal'),
('3', 'Pedro'    , '1955-07-09', 'M', '52.3' ,'1.45'  , 'EUA'),
('4', 'Maria'    , '1920-03-07', 'F', '75.9' , '1.76' , 'Russia'),
('5', 'João'     , '1978-02-03', 'M', '70.5' , '1.90' , 'Africa'),
('6', 'Carlita'  , '1956-03-04', 'F', '62.3' , '1.30' , 'Espanha'),
('7', 'Leandro'  , '1934-05-06', 'M', '62.3' , '1.87' , 'Argentina');
select * from pessoas;
````

## Changing the table structure
```mysql
alter table -- Command DDL == date definition language
							   
desc pessoas -- desc or describe   
alter tabble pessoas
add column profissão varchar(10);          		   

alter tabble pessoas 
drop column profissão                                        

alter table pessoas
add column profissião varchar(10) after nome;				    

alter table pessoas
modify column profissao varchar(20) not null default ' '; -- modify column or modify == change the profissao column to no answer

alter table pessoas
change column profissão prof varchar(20); 

alter table pessoas
rename to gafanhotos; 


create table if no exists cursos (              
  nome varchar(30) not null unique, -- unique == don't let the program create two topics with the same name
  descricao tex,
  carga int unsigned, -- unsigned == saves one byte for each record that has a registered load 
  totaulas int,
  ano year defalut '2017'
) default charset = utf8; 

alter table cursos 
add idcurso int first; 

alter table cursos
add primary key (idcurso);

describe cursos;

drop table cursos; -- Command DDL
```

 * QUICK EXAMPLE :: adding and deleting table
```
create table if not exists teste( 
  id int,
  nome varchar(30),
  idade int
);

insert into teste value
('1', 'Pedro', '22'),
('2', 'Maria', '24'),
('3', 'Gabriel', '18');

select * from teste;

drop table if exists teste;
```

## Handling of Registration, Lines or Tuples
```mysql

insert into cursos values
('1' , 'HTML4', 'Cursos  de HTML' , '40' , '37' , '2014'),
('2' , 'Algoritimos' , 'Lógica de Programação'  , '20' , '15' , '2014'),
('3' , 'Phothshop'   , 'Dicas de Photoshop CC'  , '10' , '8' , '2014'),
('4' , 'PGP'         , 'Curso de PHP para iniciantes' , '40' , '20' , '2010'),
('5' , 'JARVA'       , 'Introdução a Linguagem Java' , '10' , '29' , '2000'),
('6' , 'MySQL'       , 'Banco de Dados MySQL' , '30' , '15' , '2016'),
('7' , 'Word'        , 'Curso Completo de Word' , '40' , '30' , '2016'),
('8' , 'Sapateado'   , 'Danças Rítmicas' , '40' , '30' , '2018'),
('9' , 'Cozinha Árabe', 'Aprenda a fazer Kibe' , '40' , '30' , '2018'),
('10' , 'YouTuber'   , 'Gerar polêmica e ganhar inscritos' , '5' , '2' , '2018');

select * from cursos;
```
* Examples
* `update` = select the table to be updated (Command DML)
* `set` = indicate the change of the column name 
* `locate` = locate the row (example: 1) in the column (example: idcurso) where it will be updated
* `limitar` = limit to oneor more records
* `delete` = delete a row from the table (Command DML)
* `truncate` = delete the table but keep the table structure (Command DML)

```mysql
update cursos     
set nome = 'HTML5'				 
where idcurso = '1'	
							   
							  
update cursos  
set nome = 'HTML5'				  
where idcurso = '1'             
limit 1;                        

update cursos
set nome = 'PHP', ano = '2015'
where idcurso = '4'
limit 1;

update cursos
set nome = 'Java', carga = '40', ano = '2015'
where idcurso = '5'
limit 1;
							  
delete from cursos                      
where  idcurso = '8';

delete from cursos  
where ano = '2018'
limit 3;
							   
truncate table cursos            
```

## Operating with 'Select'

### Operating with Columns

* `order by` will sort the column by column selected
* `between`  the range of values between an initial and final instant 
* `in`  show specific values, can be one or more than one
* `and` show specific values that have informed similarity
* `where` filters data based on one or more topics

```mysql
select * from cursos;   
order by nome;  -- or order by nome asc
order by nome desc; -- will sort the column by name in reverse order

select nome, carga, ano from cursos   -- view only the column 'nome', 'carga' and 'ano'
order by ano, nome; -- the order will be by 'ano' and by 'nome'
```

### Operating with Rows
```mysql
select * from cursos
where ano = '2016'                 
order by nome; 

select nome, descricao, carga from cursos   -- view only the column 'nome', 'descricao'
where ano <> '2016' -- <> '2016' == values that are below and above 2016, excluding 2016
order by nome;						  

select nome, ano from cursos
where ano between '2014' and '2016'
order by ano desc , nome asc;  -- sort 'ano' of descending and 'nome' by ascending

select idcurso, nome from cursos
where ano in ( '2014','2016','2018')                
order by nome;


select nome, carga, totaulas from cursos
where  carga > '35' and totaulas <'30'    
order by nome;


select nome, carga, totaulas from cursos
where  carga > '35' or totaulas <'30'   
order by nome;


select * from cursos
where nome like 'P%'; -- Selected a name from the courses table where the name looks like 'p' followed by anything (%)


select * from cursos
where nome like '%a'; -- Selected a name from the courses table where the name looks like anything (%) ended with 'a'

select*from cursos
where nome like '%a%';
-- Selecionado um nome da tabela cursos onde o nome se pareça com qualquer coisa(%) que possui em algum lugar a letra 'a'


select*from cursos
where nome not like '%a%'; -- Selected a name from the courses table where the name looks like anything (%) where there is no letter 'a' anywhere

select * from cursos
where nome like 'ph%p_';  -- Selected a name from the courses table where it starts with 'ph' followed by anything (%) has one more 'p' next and has a '_' character at the end
```

### Aggregation Functions

* `count` count the number of something
* `max` shows the highest value of something
* `min` shows the minimum value of something
* `sum` total sum of all quantities of something
* `avg` average of the total of something

```mysql

select count(*) from cursos;   
select count(*) from cursos where carga > '30'; 


select max(tataluas) from cursos; 
select max(carga) from cursos; 


select*from cursos 
where ano = '2016';
select max(totaulas) 
from cursos 
where ano = '2016';
 
 
select*from cursos 
where ano = '2016'; 

select min(totaulas) 
from cursos 
where ano = '2016';

select nome, min(totaulas) 
from cursos 
where ano = '2016'; 

select sum(totaulas) 
from cursos 
where ano = '2016'; 

select avg(totaulas) from cursos where ano = '2016'; 
```
### Distinguishing records
```mysql
select DISTINCT  carga from cursos    -- only shows the specificity of the selected (resume)
order by carga;
```
### Grouping records
```mysql
select carga from cursos
group by  carga;

select carga, count(nome) from cursos -- the 'count' will show the number of 'cursos' that were grouped (group by) per 'carga'
group by  carga;


select ano, count(*) from cursos -- number of 'cursos' per year grouped by 'ano' and ordered by quantity in descending scale
group by ano
order by count(*) desc;


select carga, count(nome) from cursos 
group by  carga
having count(nome) > '3'; 
-- 'count' will show the number of nome by cursos that have been grouped (group by) per 'carga' and that have only (having) more than 3

select ano, count(*) from cursos 
group by ano
having count(ano) >= '5'; 
order by count(*) desc;
 -- number of 'cursos' per 'ano' grouped by 'ano' and ordered by the number in descending scale that has a quantity greater than or equal to 5

----selecting the 'ano' from the course table where the 'totaulas' is over 30, grouping the selection by 'ano' and within that grouping, it will only show who is over 2013, sorted by total quantity

select ano, count(*) from cursos 
where totaulas > '30'
group by ano
having ano > '2013' 
order by count(*) desc; 

-- selecting the 'carga' and total hours of 'cursos' where the 'ano' is above 2015, grouping by 'carga', showing who is above the average 'carga'
select carga, count(*) from cursos 
where ano >'2015'
group by carga
having carga > (select avg(carga) from cursos); 

```
## Foreign KEY
```mysql
describe gafanhotos;
alter table gafanhotos
add column cursopreferido int;
alter table gafanhotos
add foreign key (cursopreferido)
references cursos(idcurso);   -- representation of a multiple or foreign key
 
 
select*from gafanhotos;
select*from cursos;
update gafanhotos 
set cursopreferido = '6'
where id = '1';  -- adding the preferred 'curso' to a respective 'aluno' 

UPDATE `cadastro`.`gafanhotos` SET `cursopreferido`='22' WHERE `id`='2';
UPDATE `cadastro`.`gafanhotos` SET `cursopreferido`='7' WHERE `id`='3';
UPDATE `cadastro`.`gafanhotos` SET `cursopreferido`='12' WHERE `id`='4';
UPDATE `cadastro`.`gafanhotos` SET `cursopreferido`='1' WHERE `id`='5';
UPDATE `cadastro`.`gafanhotos` SET `cursopreferido`='8' WHERE `id`='6';
UPDATE `cadastro`.`gafanhotos` SET `cursopreferido`='4' WHERE `id`='7';
UPDATE `cadastro`.`gafanhotos` SET `cursopreferido`='3' WHERE `id`='9';
UPDATE `cadastro`.`gafanhotos` SET `cursopreferido`='5' WHERE `id`='8';
UPDATE `cadastro`.`gafanhotos` SET `cursopreferido`='30' WHERE `id`='10';
UPDATE `cadastro`.`gafanhotos` SET `cursopreferido`='22' WHERE `id`='11';
```

```mysql
---- Use join

select gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano 
from gafanhotos join cursos
on cursos.idcurso = gafanhotos.cursopreferido; -- the ON gives sense to join with relations


select gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano 
from gafanhotos inner join cursos -- INNER JOIN == JOIN
on cursos.idcurso = gafanhotos.cursopreferido
order by gafanhotos.nome; 

select g.nome, g.cursopreferido, c.nome, c.ano 
from gafanhotos as g inner join cursos as c      ---- as == summarizes the commands (grasshoppers.variable to g.fanhotos)
on c.idcurso = g.cursopreferido
order by g.nome; 


select g.nome, g.cursopreferido, c.nome, c.ano 
from gafanhotos as g left outer join cursos as c 
on c.idcurso = g.cursopreferido; 
- - give preference to the table on the left (gafanhotos) for all 'cursos' including those that none of the users want


select g.nome, g.cursopreferido, c.nome, c.ano 
from gafanhotos as g right outer join cursos as c
on c.idcurso = g.cursopreferido; -- give preference to the table on the right (gafanhotos) for all 'cursos' including those that none of the users want
```

```mysql
------ many to many relationship

create table gafanhoto_assiste_curso (
  id int not null auto_increment,
  data date,
  idgafanhoto int,
  idcurso int,
  primary key (id),
  foreign key (idgafanhoto) references gafanhotos(id),
  foreign key (idcurso) references cursos (idcurso) 	
) default charset = 'utf8';

insert into gafanhoto_assiste_curso values 
(default,'2014-03-01', '1','2');
select*from  gafanhoto_assiste_curso;


select*from gafanhotos g
join gafanhoto_assiste_curso a
on g.id = a.idgafanhoto; --  being g = 'gafanhotos' and a = 'gafanhoto_assiste_curso', shows the 'idgafanhoto' and 'idcurso' with the date

select g.id, g.nome, a.idgafanhoto, idcurso from gafanhotos g
join gafanhoto_assiste_curso a
on g.id = a.idgafanhoto;


select g.nome, idcurso from gafanhotos g
join gafanhoto_assiste_curso a
on g.id = a.idgafanhoto
order by g.nome;


select g.nome, c.nome from gafanhotos g
join gafanhoto_assiste_curso a
on g.id = a.idgafanhoto	
join cursos c
on c.idcurso = a.idcurso
order by g.nome; -- joining data from 3 tables ('cursos', 'gafanhotos', and 'gafanhoto_assiste_curso') = (c, g, a)
```
			  		   
## Managing MySQL or BackUp Backup
				  
* `Server>Data Export>` select the database (right mouse) and click on the tables you want to have a backup
* `Dump Structure and data` backup of the table structure and registered data			 
* `Dump Structure only`  backup of registered data only			  
* `Dump Structure only` backup of table structure only			   
* `Export to Dump Project Folder`  Save the entire dump to a project
* `Export to Self-Contained File`  Saves the dump to a single file
* `include creat schema`  creates a database for Dump (if you do not check this option, the programmer will have to do a create database primero)
* `Star Export`
***
If you want to use it on another server that uses mysql
* `Server>Data Inport>`
* `Inport to Dump Project Folder` import the entire dump of a project
* `Inport to Self-Contained File` import dump from a single file
* `Start Import` update Schema

## How to work on the WAMP64 terminal
						  
					
* Inside the WampServer, search and click on MySql, the password is the "enter" key 
* `mysql> show databases;`shows which databases were created, example database: cadastro
* `mysql> use cadastro;`  will open the database
* `mysql>status;` shows the database's features 
* `mysql> show tables;` shows the tables, example table: pessoas
* `mysql> describe pessoas;` shows the table people

 
