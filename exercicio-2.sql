-- Exercicio 1
--Fazer uma consulta para listar os registros da tbfaculdade.
O resultado terá 50 registros
SELECT * FROM tbfaculdade;

-- Exercicio 2
--Fazer uma consulta para listar os registros da tbfaculdade em ordem decrescente de município.
O resultado terá 50 registros.
SELECT * FROM tbfaculdade ORDER BY id DESC;

-- Exercicio 3
--Fazer uma consulta para listar o registro da tbfaculdade que está no município de Jacareí.
O resultado terá 1 registro.
SELECT * FROM tbfaculdade WHERE municipio = 'Jacareí';

--Exercicio 4
--Fazer uma consulta para listar os registros da tbfaculdade que não possuem número. O resultado terá 4 registros.
SELECT * FROM tbfaculdade WHERE numero IS NULL;

--Exercicio 5
--: Fazer uma consulta para listar os registros da tbfaculdade que possuem o nome do município começando pela letra f.
SELECT * FROM tbfaculdade WHERE municipio LIKE 'F%';

-- Exercicio 6
--Fazer uma consulta para listar os registros da tbfaculdade que estão em um bairro que possui o termo vila
select * from tbfaculdade where bairro like '%Vila%';

-- Exercicio7
--: Fazer uma consulta para listar os registros da tbfaculdade que possuem o CEP com os três últimos dígitos sendo zero.
select * From tbfaculdade where cep like '%000';

-- Exercicio 8
--Fazer uma consulta para listar os registros da tbfaculdade que possuem o dígito 5 na 2ª posição do CEP.
select * From tbfaculdade where cep like '_5%';

-- Exercicio 9
--Fazer uma consulta para listar os registros da tbfaculdade que possuem o dígito 5 na 2ª posição e o dígito 2 na penúltima posição do CEP.
select * From tbfaculdade where cep like '_5%' and cep like '%2_';

-- Exercicio 10
-- Fazer uma consulta para listar os registros da tbfaculdade que possuem exatamente dois dígitos no número.
select * From tbfaculdade where numero like '__';

--Raciocinio extra
select * From tbfaculdade where numero like '__' and numero not like '0_'


--Clausula:
drop table if exists tbfaculdade;
create table if not exists tbfaculdade(
   id integer not null primary key,
   unidade varchar not null,
   municipio varchar not null,
   logradouro varchar not null,
   numero varchar null,
   bairro varchar not null,
   cep varchar not null
);
insert into tbfaculdade(id,unidade,municipio,logradouro,numero,bairro,cep)
values
(1,'Fatec Adamantina','Adamantina','Rua Paraná','400','Jardim Brasil','17800000'),
(2,'Fatec Americana - Ministro Ralph Biasi','Americana','R. Emílio de Menezes',NULL,'Gleba B - Vila Amorim','13469111'),
(3,'Fatec Araçatuba - Prof. Fernando Amaral de Almeida Prado','Araçatuba','Av. Prestes Maia','1764',' Jardim Ipanema','16052045'),
(4,'Fatec Araraquara','Araraquara','R. Precide Scarpino','126','Jardim Santa Clara','14811373'),
(5,'Fatec Araras','Araras','R. Jarbas Leme de Godoy','875','Jardim José Ometto II','13606389'),
(6,'Fatec Assis','Assis','Av. Dom Antônio','2100','Jardim Paraná','19806173'),
(7,'Fatec Barretos','Barretos','Av. Trinta e Sete','646','Jardim Alvorada','14780390'),
(8,'Fatec Barueri - Padre Danilo José de Oliveira Ohl','Barueri','Av. Carlos Capriotti','123','Novo Centro Comercial','06401136'),
(9,'Fatec Bauru','Bauru','R. Manoel Bento Cruz','3-30','Centro','17015171'),
(10,'Fatec Bebedouro - Jorge Caram Sabbag','Bebedouro','R. Dr. Oscar Werneck','1286 ','Centro','14701120'),
(11,'Fatec Botucatu','Botucatu','Av. José Ítalo Bacchi',NULL,'Jardim Aeroporto','18606855'),
(12,'Fatec Bragança Paulista - Jornalista Omair Fagundes de Oliveira','Bragança Paulista','R. Das Indústrias','130','Jardim Fraternidade','12926674'),
(13,'Fatec Campinas','Campinas','Av. Cônego Antônio Roccatto','593','Jd. Santa Mônica','13082014'),
(14,'Fatec Capão Bonito','Capão Bonito','R. Amantino de Oliveira Ramos','60','Terras de Embiruçu','18304755'),
(15,'Fatec Carapicuíba','Carapicuíba','Av. Francisco Pignatari','650','Vila Gustavo Correia','06310390'),
(16,'Fatec Catanduva','Catanduva','R. Maranhão','898','Centro','15800020'),
(17,'Fatec Cotia','Cotia','R. Nelson Raineri','700','Bairro do Lageado','06702155'),
(18,'Fatec Cruzeiro - Prof. Waldomiro May','Cruzeiro','Av. Rotary','383','Vila Paulista','12701170'),
(19,'Fatec Diadema - Luigi Papaiz','Diadema','Av. Luiz Merenda','443','Jardim Campanário','09931390'),
(20,'Fatec Ferraz de Vasconcelos','Ferraz de Vasconcelos','R. Carlos de Carvalho','200','Jardim São João','08545120'),
(21,'Fatec Franca - Dr. Thomaz Novelino','Franca','R. Irênio Grecco','4580','Vila Imperador','14405191'),
(22,'Fatec Franco da Rocha','Franco da Rocha','Rod. Prefeito Luiz Salomão Chamma','240','Pouso Alegre','07857050'),
(23,'Fatec Garça - Dep. Julio Julinho Marcondes de Moura','Garça','Av. Presidente Vargas','2331','José Ribeiro','17400000'),
(24,'Fatec Guaratinguetá - Prof. João Mod','Guaratinguetá','Av Prof. João Rodrigues Alckmin','1501','Jardim Esperança','12517475'),
(25,'Fatec Guarulhos','Guarulhos','R. Cristóbal Cláudio Elilo','88','Parque Cecap','07190065'),
(26,'Fatec Indaiatuba - Dr. Archimedes Lammoglia','Indaiatuba','R. D. Pedro I','65','Cidade Nova I','13334100'),
(27,'Fatec Itapetininga - Prof. Antonio Belizandro Barbosa Rezende','Itapetininga','R. Dr. João Vieira de Camargo','104','Vila Barth','18205600'),
(28,'Fatec Itapira - Ogari de Castro Pacheco','Itapira','R. Tereza Lera Paoletti','570','Jardim Bela Vista','13974080'),
(29,'Fatec Itaquaquecetuba','Itaquaquecetuba','Av. Itaquaquecetuba','711','Vila Monte Belo','08577210'),
(30,'Fatec Itatiba','Itatiba','R. Daniel Peçanha de Moraes','200','Jardim Salessi','13251140'),
(31,'Fatec Itu - Dom Amaury Castanho','Itu','Av. Tiradentes','1211','Parque das Indústrias','13309640'),
(32,'Fatec Jaboticabal - Nilo de Stéfani','Jaboticabal','Av. Eduardo Zambianchi','31','Vila Industrial','14883130'),
(33,'Fatec Jacareí - Prof. Francisco de Moura','Jacareí','Av. Faria Lima','155','Jardim Santa Maria','12328070'),
(34,'Fatec Jales - Prof. José Camargo','Jales','R. Vicente Leporace','2630','Jardim Trianon','15703116'),
(35,'Fatec Jahu','Jaú','R. Frei Galvão',NULL,'Jardim Pedro Ometto','17212599'),
(36,'Fatec Jundiaí - Deputado Ary Fossen','Jundiaí','Av. União dos Ferroviários','1760','Centro','13201160'),
(37,'Fatec Lins - Prof. Antonio Seabra','Lins','Estrada Mario Covas Jr.','Km 1','Estrada Vicinal Lins - Guaímbe - Zona Rural','16400000'),
(38,'Fatec Marília - Estudante Rafael Almeida Camarinha','Marília','Av. Castro Alves','62','Somenzari','17506000'),
(39,'Fatec Matão','Matão','Av. Habib Gabriel','1360','Residencial Olívio Benassi','15990539'),
(40,'Fatec Mauá','Mauá','Av. Antonia Rosa Fioravante','804','Vila Fausto Morelli','09390120'),
(41,'Fatec Mococa','Mococa','Av. Dr. Américo Pereira Lima',NULL,'Jardim Lavínia','13736260'),
(42,'Fatec Mogi das Cruzes','Mogi das Cruzes','R. Carlos Barattino','908','Vila Nova Mogilar','08773600'),
(43,'Fatec Mogi Mirim - Arthur de Azevedo','Mogi Mirim','R. Ariovaldo Silveira Franco','567','Jardim 31 de Março','13801005'),
(44,'Fatec Osasco - Pref. Hirant Sanazar','Osasco','R. Pedro Rissato','30','Vila dos Remédios','06296220'),
(45,'Fatec Ourinhos','Ourinhos','Av. Vitalina Marcusso','1400','Campus Universitário','19910206'),
(46,'Fatec Pindamonhangaba','Pindamonhangaba','Rod. Vereador Abel Fabricio Dias (SP 62)','4010','Água Preta','12414000'),
(47,'Fatec Piracicaba - Dep. Roque Trevisan','Piracicaba','R. Diácono Jair de Olveira','651 ','Santa Rosa','13414155'),
(48,'Fatec Pompéia - Shunji Nishimura','Pompéia','Av. Shunji Nishimura','605','Distrito Industrial','17580000'),
(49,'Fatec Praia Grande','Praia Grande','Praça 19 de Janeiro','144','Boqueirão','11700100'),
(50,'Fatec Presidente Prudente','Presidente Prudente','R. Teresina','75','Vila Paulo Roberto','19046230');
