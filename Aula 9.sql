--Clausula
drop table if exists tbmatricula;
drop table if exists tbaluno;
drop table if exists tbdisciplina;
create table if not exists tbaluno (
 id INTEGER PRIMARY KEY,
 nome VARCHAR(40) not null
);
create table if not exists tbdisciplina (
 id INTEGER PRIMARY KEY,
 nome VARCHAR(30) not null,
 carga INTEGER
);
create table if not exists tbmatricula (
 iddisciplina INTEGER,
 idaluno INTEGER,
 nota FLOAT,
 PRIMARY KEY (iddisciplina, idaluno),
 FOREIGN KEY (iddisciplina)REFERENCES tbdisciplina(id),
 FOREIGN KEY (idaluno)REFERENCES tbaluno(id)
);

--Exercicio 1
insert into tbaluno (id, nome)
values
(1,'Ana Maria'),
(2,'Luiz Carlos'),
(3,'Maria Silva'),
(4,'Renato Rodrigues'),
(5,'Carla Santiago')

--Exercicio 2
insert into tbdisciplina (id, nome, carga)
values
(1,'Modelagem de Banco de Dados',80),
(2,'Design Digital',80),
(3,'Estrutura de Dados',null),
(4,'Experiência do Usuário',40),
(5,'Aprendizagem de Máquina',null),
(6,'Inglês I',null)

--Exercicio 3
insert into tbmatricula
values
(3, 1, 7.8),
(1,5, 8.4),
(1,2,7.5),
(6,2, null),
(3,4,null),
(5,4,8.9),
(6,4,null)

--Exercicio 4
UPDATE tbmatricula
SET nota = nota + 0.5
WHERE nota IS NOT NULL;

--Exercicio 5
update tbmatricula as m
set nota = nota + 0.2
from tbdisciplina as d 
where m.iddisciplina = d.id and d.nome ='Modelagem de Banco de Dados';

--Exercicio 6
update tbmatricula as m 
set nota = 5.0 
from tbaluno as a, tbdisciplina as d
where a.id = m.idaluno and d.id = m.iddisciplina and a.nome = 'Luiz carlos' and d.nome = 'Ingles I'

--Exercicio 7
update tbmatricula as m 
set nota = 0.0 
from tbaluno as a, tbdisciplina as d
where a.id = m.idaluno and d.id = m.iddisciplina 
and nota is null;

--Exercicio 8
delete from tbmatricula
where nota = 0.0;

--Exercicio 9
delete from tbmatricula as m   
using tbaluno as a, tbdisciplina as d
where a.id = m.idaluno and d.id = m.iddisciplina 
and a.nome = 'Luiz carlos' and d.nome = 'Ingles I';

--Exercicio 10
delete from tbmatricula;

--Consulta:
select * from tbaluno as a, tbmatricula as m, tbdisciplina as d 
where a.id = m.idaluno and m.iddisciplina =d.id;
