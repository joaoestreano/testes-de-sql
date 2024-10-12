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
