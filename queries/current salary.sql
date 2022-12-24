---get current salary in employees database
select distinct e.emp_no,
        e.first_name,
        d.dept_name,
        Last_value(s.salary)OVER (
        Partition by e.emp_no
        order by s.from_date
        range between UNBOUNDED PRECEDING and UNBOUNDED FOLLOWING
    ) as "current salary"
from salaries as S

join employees as e using(emp_no)
join dept_emp as de using(emp_no)
join departments as d using(dept_no)

ORDER by e.emp_no;