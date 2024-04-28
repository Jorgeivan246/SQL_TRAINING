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

--8. Listar los salarios y comisiones de los empleados del departamento 2000, ordenado por comisión

select * from departamentos;

SELECT em.nomEmp as nombre_empleados,salEmp as salarios,comisionE as comisiones FROM empleados em INNER JOIN departamentos depa ON em.codDepto=depa.codDepto WHERE depa.codDepto = '2000'
ORDER BY em.comisionE


--9. Listar todas las comisiones

SELECT distinct em.comisionE FROM empleados em

---10. Obtener el valor total a pagar que resulta de sumar a los empleados del departamento 3000 una bonificación de 500.000, en orden alfabético del empleado


SELECT em.nomEmp as nombre_empleado,em.salEmp as salario_empleado  ,em.salEmp + 500000 as pago_estimado  FROM empleados em WHERE em.codDepto= '3000' ORDER BY nomEmp;


---11. Obtener la lista de los empleados que ganan una comisión superior a su sueldo.

SELECT emp.nomEmp,emp.comisionE,emp.salEmp FROM empleados emp WHERE emp.comisionE > emp.salEmp;


--12. Listar los empleados cuya comisión es menor o igual que el 30% de su sueldo.


SELECT em.nomEmp,em.comisionE,em.salEmp FROM empleados em WHERE em.comisionE <= em.salEmp*0.3


