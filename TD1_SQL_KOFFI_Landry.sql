								-- TD SQL n°1--

                        -- KOFFI Kouadio Landry Régis --
                            -- MDBFA 2 IT-FINANCE --

SHOW DATABASES;
USE hr_db;

/*1) Affichage du nom, prénom, date d’embauche et le salaire des employés, 
ordonné par ordre alphabétique sur le nom */

 SELECT last_name, first_name, hire_date, salary
 FROM employees ORDER BY last_name ASC;

/*2) Affichage du nom, prénom, date d’embauche et le salaire des employés rangé 
par ancienneté */

SELECT last_name, first_name,hire_date,salary FROM employees ORDER BY hire_date ASC ;

/*3) Affichage de la liste des 10 employés les plus anciens*/

SELECT * FROM employees ORDER BY hire_date  ASC LIMIT 10;

/*4) Affichage de la liste des 10 employés les mieux remunérés*/

SELECT * FROM employees ORDER BY salary  DESC LIMIT 10;

/*5) Affichage de la liste des personnes employées entre 1997 et 1998*/

SELECT * FROM employees WHERE hire_date BETWEEN '1997-01-01' AND '1998-12-31';

/*6) Affichage de la liste des employées dont le salaire est entre 2500 et 3000 ordonné par ordre croissant*/

SELECT * FROM employees WHERE 2500 <= salary and salary <= 3000 ORDER BY salary ASC;


/*7) Affichage de la liste des employées qui sont comptables, Financiers ou RH*/


SELECT *
FROM employees
INNER JOIN departments ON employees.department_id = departments.department_id
INNER JOIN jobs ON employees.job_id = jobs.job_id
WHERE departments.department_name IN ('Human Resources', 'Accounting', 'Finance');
