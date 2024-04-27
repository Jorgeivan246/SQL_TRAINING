--show tables;


--1. Obtener los datos completos de los empleados.

SELECT * FROM empleados ; 

--2. Obtener los datos completos de los departamentos

SELECT * FROM departamentos;

--3. Obtener los datos de los empleados con cargo 'Secretaria'.

DESCRIBE empleados;

SELECT DISTINCT cargoE FROM empleados ;

SELECT * FROM empleados em WHERE em.cargoE = 'Secretaria' 

--4. Obtener el nombre y salario de los empleados.


SELECT em.nomEmp,em.salEmp FROM empleados em  ;


--5. Obtener los datos de los empleados vendedores, ordenado por nombre.

SELECT DISTINCT cargoE FROM empleados ;

SELECT * FROM empleados as em WHERE em.cargoE = 'Vendedor' ORDER BY em.nomEmp


--6. Listar el nombre de los departamentos



SELECT  depa.nombreDpto FROM departamentos as depa



--7. Obtener el nombre y cargo de todos los empleados, ordenado por salario

SELECT * FROM empleados as em


SELECT nomEmp,cargoE FROM empleados as em