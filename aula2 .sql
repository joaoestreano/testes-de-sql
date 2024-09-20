Server [localhost]:
Database [postgres]:
Port [5432]:
Username [postgres]:
Password for user postgres:
psql (15.2)
WARNING: Console code page (850) differs from Windows code page (1252)
         8-bit characters might not work correctly. See psql reference
         page "Notes for Windows users" for details.
Type "help" for help.

postgres=# CREATE TABLE if not exists tbdepartamento (
postgres(# iddepartamento INTEGER PRIMARY KEY,
postgres(# nome VARCHAR(20) NOT NULL
postgres(# );
NOTICE:  relation "tbdepartamento" already exists, skipping
CREATE TABLE
postgres=#
postgres=# create table if not exists tbdepartamento (
postgres(# iddepartamento INTEGER PRIMARY KEY,
postgres(# nome VARCHAR(20) NOT NULL
postgres(# );
NOTICE:  relation "tbdepartamento" already exists, skipping
CREATE TABLE
postgres=# drop table if exists tbdepartamento;
DROP TABLE
postgres=# create table if not exists tbdepartamento (
postgres(# iddepartamento INTEGER PRIMARY KEY,
postgres(# nome VARCHAR(20) NOT NULL
postgres(# );
CREATE TABLE
postgres=# insert into tbdepartamento
postgres-# values
postgres-# (1,'Estoque');
INSERT 0 1
postgres=# begin;
BEGIN
postgres=*# insert into tbdepartamento
postgres-*# values (2,'RH');
INSERT 0 1
postgres=*# select * from tbdepartamento;
 iddepartamento |  nome
----------------+---------
              1 | Estoque
              2 | RH
(2 rows)


postgres=*# rollback;
ROLLBACK
postgres=# select * from tbdepartamento;
 iddepartamento |  nome
----------------+---------
              1 | Estoque
(1 row)


postgres=# begin;
BEGIN
postgres=*# insert into tbdepartamento
postgres-*# values (3,'compras');
INSERT 0 1
postgres=*# select 8 from tbdepartamento;
 ?column?
----------
        8
        8
(2 rows)


postgres=*# select * from tbdepartamento;
 iddepartamento |  nome
----------------+---------
              1 | Estoque
              3 | compras
(2 rows)


postgres=*# commit;
COMMIT
postgres=# select * from tbdepartamento;
 iddepartamento |  nome
----------------+---------
              1 | Estoque
              3 | compras
(2 rows)


postgres=#
