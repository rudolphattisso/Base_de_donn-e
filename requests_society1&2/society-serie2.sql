/*1*/
select *
from employee
    join department d on department_id = d.id;
/*2*/
select d.region_id,
    d."name",
    last_name
from employee
    join department d on department_id = d.id;
/*3*/
select e.last_name
from employee e
    join department d on department_id = d.id
where d."name" = 'distribution';
/*4*/
select e1.last_name,
    e1.salary
from employee e1
    join employee e2 ON e1.id = e2.superior_id
WHERE e1.salary > e2.salary;
/*5*/
SELECT *
FROM employee
WHERE department_id IN (
        SELECT id
        FROM department
        WHERE name LIKE 'finance'
    )
    /*6*/
    elect e.last_name,
    e.title
select e.last_name,
    e.title
FROM employee e
WHERE title in (
        SELECT title
        FROM employee
        WHERE last_name = 'amartakaldire';
);
/*7*/
select last_name,
    salary,
    department_id
from employee e
where salary > any (
        select salary
        from employee
        where department_id = 31
    )
    and department_id != 31
order by department_id,
    salary;
/*8*/
select last_name,
    salary,
    department_id
from employee e
where salary > all (
        select salary
        from employee
        where department_id = 31
    )
    and department_id != 31
order by department_id,
    salary;
/*9*/
select last_name,
    title
from employee e
where e.department_id = 31
    and title any (
        select title
        from employee e2
        where department_id = 32
    );
/*10*/
select last_name,
    title
from employee e
where e.department_id = 31
    and title not in (
        select title
        from employee e2
        where department_id = 32
    );
/*11*/
select last_name,
    title,
    salary
from employee e
where (e.title, e.salary) in (
        select title,
            salary
        from employee
        where last_name = 'fairant'
    );
/*12*/
select d.id,
    d."name",
    e.last_name
from department d
    left join employee e on department_id = d.id
order by d.id;

/*13*/
SELECT AVG(salary)
FROM employee
where title like 'secrétaire'
SELECT name,
    AVG(salary)
FROM employee;
--non à cause de la moyenne qui ne peut être associé à tous les noms.
select name,
    salary
FROM employee
WHERE salary = (
        SELECT MAX(salary)
        FROM employee
    );
SELECT department_id,
    AVG(salary)
FROM employee
GROUP BY department_id;

/*14*/
SELECT title,
    count(title)
from employee
GROUP BY title;

/*15*/
SELECT title,
    COUNT(*)
FROM employee
GROUP BY title
HAVING count(*) > 2;

/*16*/
select department_id , count(*)
from employee 
group by department_id 
having count(*)>=3

/*17*/
SELECT LEFT(last_name, 1) AS initiale
FROM employee
GROUP BY initiale
HAVING COUNT(*) >= 3;

/*18*/
select max(salary) , min(salary) ,  
max(salary)-min(salary) as difference 
from employee 

/*19*/
select count(distinct title) 
from employee 

/*20*/
select title , count(*) 
from employee 
group by title 



/*21 à corriger*/
select d."name", count(*) as nb_emp 
from department d 
left join employee e on e.department_id = d.id 
group by d.name

/*22 a corriger*/
HSELECT title, AVG(salary) AS salaire_moy
FROM employee
GROUP BY title;
HAVING AVG(salary) >
(
    SELECT AVG(salary)
    FROM employee
    WHERE title = 'représentant'
)
ORDER BY moyenne_salaire DESC;

/*23*/
select salary, commission_rate 
from employee 
group by commission_rate 
having commission_rate != 0


/**/
/**/
/**/
/**/
/**/
/**/
/**/
/**/
/**/