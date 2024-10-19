--Exercicio 1
SELECT c.nome as "curso" from tbcurso as c, tbunidade as u, tbcurso_por_unidade as cpu
where u.id = cpu.idunidade
and c.id = cpu.idcurso
and u.municipio='Jacareí' order by c.nome;

--Exercicio 2
SELECT c.nome as "curso",t.nome as "Turno" 
from tbcurso as c, tbunidade as u, tbcurso_por_unidade as cpu, tbturno as t
where u.id = cpu.idunidade
and c.id = cpu.idcurso and t.id =cpu.idturno
and u.municipio= 'Jacareí' order by c.nome;

--Exercicio 3
SELECT distinct u.unidade as "Unidade"
from tbcurso as c, tbunidade as u, tbcurso_por_unidade as cpu
where u.id = cpu.idunidade and c.id = cpu.idcurso 
and c.nome = 'Gestão Financeira' order by u.unidade;

--Exercicio 4
SELECT distinct t.nome as "Turno"
from tbcurso as c,tbturno as t, tbcurso_por_unidade as cpu
where t.id = cpu.idturno and c.id = cpu.idcurso 
and c.nome = 'Gestão Financeira' order by t.nome;

--Exercicio 5
select t.nome as "Turno", count(c.id) as "Quantidade"
from tbturno as t, tbcurso_por_unidade as cpu, tbcurso as c 
where t.id = cpu.idturno and c.id = cpu.idcurso
group by "Turno"
order by "Turno";

--Exercicio 6
select t.nome as "turno", sum(vaga) as "vagas"
from tbturno as t, tbcurso_por_unidade as cpu
where t.id = cpu.idturno
group by "turno"
order by "turno";

--Exercicio 7
select unidade as "Unidade", t.nome as "Turno"
from tbturno as t, tbcurso_por_unidade as cpu, tbunidade as u
where t.id = cpu.idturno and u.id = cpu.idunidade
group by "Unidade","Turno"
order by "Unidade";

--Exercicio 8
select unidade as "Unidade", t.nome as "Turno", count (cpu.idcurso) as "Cursos"
from tbturno as t, tbcurso_por_unidade as cpu, tbunidade as u, tbcurso as c
where t.id = cpu.idturno and u.id = cpu.idunidade and c.id = cpu.idcurso
group by "Unidade","Turno"
order by "Unidade";

--Exercicio 9
select unidade as "Unidade", t.nome as "Turno", count (cpu.idcurso) as "Cursos"
from tbturno as t, tbcurso_por_unidade as cpu, tbunidade as u, tbcurso as c
where t.id = cpu.idturno and u.id = cpu.idunidade and c.id = cpu.idcurso
group by "Unidade","Turno"
having count (cpu.idcurso)=5
order by "Unidade";

--Exercicio 10
select unidade as "Unidade", t.nome as "Turno", count (cpu.idcurso) as "Cursos"
from tbturno as t, tbcurso_por_unidade as cpu, tbunidade as u, tbcurso as c
where t.id = cpu.idturno and u.id = cpu.idunidade and c.id = cpu.idcurso 
and t.nome = 'matutino' 
group by "Unidade","Turno"
having count (cpu.idcurso)=5
order by "Unidade";
