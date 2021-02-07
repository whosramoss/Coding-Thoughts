
-- 1) Uma lista com o nome de todas as pessoas do sexo feminino da tabela gafanhotos

select nome from gafanhotos
where sexo = 'f'
order by nome;

-- 2) Uma lista com os dados de todos aqueles  que nasceram entre 1/janeiro/2000 e 31/Dezembro/2015

select * from gafanhotos
where nascimento between '2000-01-01' and '2015-12-31'
order by nascimento;

-- 3) Uma lista com o nome de todos os homens que trabalham com programadores

select nome from gafanhotos
where profissao = 'programador'
order by nome;

-- 4) Uma lista com todos os dados das mulheres que nasceram no Brasil  e que  tem seu nome inicinado  com a letra "j"
 
select * from gafanhotos
where nome  like 'j%' and nacionalidade = 'Brasil'
order by nome;  

-- 5) Uma lista com o nome e nacionalidade de todos os homens que tem Silva no nome, não nasceram 	no Brasil  e pesam menos de 100kg 

select nome,nacionalidade from gafanhotos 
where sexo = 'M' and nome like '%silva%' and peso < '100' and nacionalidade != 'brasil' 
order by nome;

-- 6) Qual é a maior altura entre os gafanhotos homens que moram no Brasil  ?

select max(altura) from gafanhotos 
where sexo = 'M' and nacionalidade = 'brasil' 
order by nome;

-- 7) Qual é a media de peso dos gafanhotos cadastrados ?

select avg(peso) from gafanhotos;

-- 8) Qual o menor peso entre as mulheres que nasceram fora  do Brasil e entre 01/jan/1990 e 31/dezembro/2000 na tabela gafanhotos ?

select min(peso) from gafanhotos 
where sexo = 'F' and nascimento between '1990-01-01' and '2000-12-31' 
and nacionalidade != 'brasil' ;

-- 9) Quantos gafanhotos mulheres tem mais de 1.90m de altura ?

select count(nome) from gafanhotos 
where sexo = 'F' and altura > '1.90';
