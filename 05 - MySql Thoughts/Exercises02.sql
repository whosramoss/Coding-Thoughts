						  
-- 1) Uma lista com as profissoes das pessoas  e seus respectivos quantatitavos da tabela gafanhotos

select profissao, count(*) from gafanhotos 
group by profissao 
order by count(*);

-- 2) Quantos homens e quantas mulheres nasceram  após 01/Janeiro/2005 da tabela gafanhotos?

select sexo,count(sexo) from gafanhotos 
where nascimento > '2005-01-01' 
group by sexo desc;

-- 3) Uma lista com os gafanhotos que nasceram fora do Brasil , mostrando o País de origem e o total de pessoas nascidas lá.Só nos interessam os paises que tiveram mais de 3 gafanhotos com essa nacionalidade 

select nacionalidade, count(*) from gafanhotos 
where nacionalidade != 'brasil'
group by nacionalidade
having count(nacionalidade) > 3;

-- 4) Uma lista agrupada pela altura dos  gafanhotos , mostrando  quantas pessoas pesam mais de 100kg e que estão acima da média de altura  de todos os cadastrados

select avg(altura) from gafanhotos;
select altura, count(*) from gafanhotos 
where peso > '100' 
group by altura
having altura > (select avg(altura) from gafanhotos);﻿