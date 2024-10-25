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

--Consulta:
select * from tbaluno as a, tbmatricula as m, tbdisciplina as d 
where a.id = m.idaluno and m.iddisciplina =d.id;
