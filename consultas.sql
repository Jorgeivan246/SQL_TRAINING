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




--13.Elabore un listado donde para cada fila, figure ‘Nombre’ y ‘Cargo’ antes del valor respectivo para cada empleado.


SELECT em.nomEmp,em.cargoE FROM empleados em;


--14. Hallar el salario y la comisión de aquellos empleados cuyo número de documento de identidad es superior al '19.709.802'


SELECT em.salEmp,em.comisionE FROM empleados em WHERE em.nDIEmp >  '19.709.802'

--15. Muestra los empleados cuyo nombre empiece entre las letras J y Z (rango).Liste estos empleados y su cargo por orden alfabético.



--SELECT em.nomEmp,em.cargoE FROM empleados em WHERE lower(nomemp) > 'j' and lower(nomemp) < 'z' 


--16. Listar el salario, la comisión, el salario total (salario + comisión), documento de identidad del empleado y nombre, de aquellos empleados que tienen comisión superior a 1.000.000, ordenar el informe por el número del documento de identidad


SELECT em.salEmp as salario,em.comisionE as comision,em.salEmp+em.comisionE as salario_total, em.nDIEmp,em.nomEmp
FROM empleados em WHERE em.comisionE > 1000000 ORDER BY em.nDIEmp



--17. Obtener un listado similar al anterior, pero de aquellos empleados que NO tienen comisión

SELECT em.salEmp as salario,em.comisionE as comision,em.salEmp+em.comisionE as salario_total, em.nDIEmp,em.nomEmp
FROM empleados em WHERE em.comisionE <= 0 ORDER BY em.nDIEmp


--18. Hallar los empleados cuyo nombre no contiene la cadena "MA"

SELECT nomEmp FROM empleados em WHERE em.nomEmp NOT LIKE '%MA%'


--19. Obtener los nombres de los departamentos que no sean “Ventas” ni “Investigación” NI 'MANTENIMIENTO', ordenados por ciudad.


SELECT depa.nombreDpto FROM departamentos depa WHERE depa.nombreDpto NOT IN ('VENTAS','INVESTIGACION','MANTENIMIENTO');


--20. Obtener el nombre y el departamento de los empleados con cargo 'Secretaria' o 'Vendedor', que no trabajan en el departamento de “PRODUCCION”, cuyo salario es superior a $1.000.000, ordenados por fecha de incorporación.

describe empleados;

SELECT depa.nombreDpto,em.nomEmp FROM empleados em INNER JOIN departamentos depa ON em.codDepto=depa.codDepto

WHERE depa.nombreDpto <> 'PRODUCCION' AND em.salEmp > 1000000 ORDER BY em.fecIncorporacion DESC;


--21. Obtener información de los empleados cuyo nombre tiene exactamente 11 caracteres


SELECT * FROM empleados em WHERE length(em.nomEmp) = 11;

--22. Obtener información de los empleados cuyo nombre tiene al menos 11 caracteres

SELECT * FROM empleados em WHERE length(em.nomEmp) >= 11;


--23. Listar los datos de los empleados cuyo nombre inicia por la letra 'M', su salario es mayor a $800.000 o reciben comisión y trabajan para el departamento de 'VENTAS'


SELECT * FROM empleados em INNER JOIN departamentos depa ON em.codDepto=depa.codDepto 
WHERE lower(em.nomEmp) LIKE 'm%' AND ( em.salEmp > 800000 OR em.comisionE > 0 )  AND depa.nombreDpto = 'VENTAS'


--24. Obtener los nombres, salarios y comisiones de los empleados que reciben un salario situado entre la mitad de la comisión la propia comisión


 SELECT em.nomEmp,em.salEmp,em.comisionE FROM empleados em  INNER JOIN departamentos depa ON em.codDepto=depa.codDepto  
 WHERE em.salEmp BETWEEN em.salEmp/2 AND  em.salEmp 



