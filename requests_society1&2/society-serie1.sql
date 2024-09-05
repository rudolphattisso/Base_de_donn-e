/*1*/
select id
from department;
select name
from department;
select region_id
from department;
/*2*/
select last_name,
    hiring_date,
    superior_id,
    department_id,
    salary
from employee e;
SELECT last_name AS “ Nom “
FROM employee;
/*3*/
select title
from employee e;
/*4*/
SELECT DISTINCT title
from employee;
/*5*/
select *
from employee e
where salary > 25000;
/*6*/
select last_name,
    id,
    department_id
from employee
where title = 'secrétaire';
;
/*7*/
select last_name,
    department_id
from employee
where department_id > 40;
/*8*/
select last_name,
    first_name
from employee e
where last_name > first_name;
/*9*/
select last_name,
    salary,
    department_id
from employee
where title = 'représentant'
    and department_id = 35
    and salary > 20000;
/*10*/
select last_name,
    title,
    salary
from employee
where title = 'représentant'
    or title = 'président';
/*11*/
select last_name,
    title,
    department_id,
    salary
from employee
where department_id = 34
    and (
        title = 'représentant'
        or title = 'secrétaire'
    )
    /*12*/
select last_name,
    title,
    department_id,
    salary
from employee
where (
        title = 'représentant'
        or title = 'secrétaire'
    )
    and department_id = 34
    /*13*/
select last_name,
    salary
from employee
where (
        salary >= 20000
        and salary <= 30000
    );
/*14*/
select last_name
from employee
where last_name like 'H%'
select last_name
from employee
where last_name like 'h%' / 15 * /
select last_name
from employee
where last_name like '%n'
    /*16*/
select last_name
from employee
where last_name like '__u%'
    /*17*/
select salary,
    last_name
from employee
where department_id = 41
order by salary asc
    /*18*/
select salary,
    last_name
from employee
where department_id = 41
order by salary desc
    /*19*/
select title,
    salary,
    last_name
from employee
order by title asc,
    salary desc;
/*20*/
select commission_rate,
    salary,
    last_name
from employee
order by commission_rate asc;
/*21*/
select last_name,
    salary,
    commission_rate,
    title
from employee
where commission_rate is null;
/*22*/
select last_name,
    salary,
    commission_rate,
    title
from employee
where commission_rate notnull;
/*23*/
select last_name,
    salary,
    commission_rate,
    title
from employee
where commission_rate < 15;
/*24*/
select last_name,
    salary,
    commission_rate,
    title
from employee
where commission_rate > 15;
/*25*/
select last_name,
    salary,
    commission_rate,
    (salary * commission_rate / 100) AS commission
from employee
where commission_rate is not null;
/*26*/
select last_name,
    salary,
    commission_rate,
    (salary * commission_rate / 100) AS commission
from employee
where commission_rate is not null
order by commission_rate asc;
/*27*/
select concat(last_name, '', first_name) as Complete_Name
from employee;
/*28*/
select substring(last_name, 1, 5)
from employee;
/*29*/
select last_name,
    position('r' in last_name)
from employee e;
/*30*/
select last_name upper(last_name),
    lower(last_name)
from employee e
where last_name = 'Vrante';
/*31*/
select last_name,
    length(last_name)
from employee;