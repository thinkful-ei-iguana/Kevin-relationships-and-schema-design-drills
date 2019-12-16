--How many people work in the Sales department?
SELECT *
FROM department JOIN employee ON department.id = department;

--List the names of all employees assigned to the 'Plan Christmas party' project.
select
e.emp_name as Full_Name,
p.project_name as Project
from
employee e
join
employee_project ep
on e.id = ep.emp_id
join
project p
on ep.project_id = p.id
where p.id = 2;

--List the names of employees from the Warehouse department that are assigned to the 'Watch paint dry' project.
select
e.emp_name as Full_Name,
p.project_name as Project,
d.dept_name as Department
from
department d
join
employee e
on d.id = e.department
join
employee_project ep
on e.id = ep.emp_id
join
project p
on ep.project_id = p.id
where d.id = 4
and p.id = 4;

--Which projects are the Sales department employees assigned to?

select
e.emp_name as full_name,
p.project_name as project
from
department d
join
employee e
on d.id = e.department
join
employee_project
on e.id = employee_project.emp_id
join
project p
on employee_project.project_id = p.id
where d.id = 2;

--List only the managers that are assigned to the 'Watch paint dry' project.
select
e.emp_name as full_name,
p.project_name as project
from
department d
join
employee e
on d.id = e.department
join
employee_project
on e.id = employee_project.emp_id
join
project p
on employee_project.project_id = p.id
where d.id = 2
and d.manager = e.id;