Тема 1
select w.title from Works w
                        join Author_Work aw on w.id = aw.work_id
                        join Authors a on aw.author_id = a.id
where a.name = 'Пушкин';

select w.title from Works w
                        join Work_Category wc on w.id = wc.work_id
                        join Categories c on wc.category_id = c.id
where c.name = 'Фантастика';

select a.name from Authors a
                       join Author_Work aw on a.id = aw.author_id
                       join Works w on aw.work_id = w.id
where w.title = 'Капитанская дочка';

select distinct c.name from Categories c
                                join Work_Category wc on c.id = wc.category_id
                                join Author_Work aw on wc.work_id = aw.work_id
                                join Authors a on aw.author_id = a.id
where a.name = 'Пушкин';
Тема 2
select d.name from Employment_History eh
                       join Departments d on eh.department_id = d.id
where eh.employee_id = 1 and '2026-06-25' between eh.start_date and coalesce(eh.end_date, '9999-12-31');
select p.title from Employment_History eh
                        join Positions p on eh.position_id = p.id
where eh.employee_id = 1 and '2026-06-25' between eh.start_date and coalesce(eh.end_date, '9999-12-31');

select sh.salary from Salary_History sh
where sh.employee_id = 1 and '2026-06-25' between sh.start_date and coalesce(sh.end_date, '9999-12-31');
select m.name from Managers_History mh
                       join Employees m on mh.manager_id = m.id
where mh.employee_id = 1 and '2026-06-25' between mh.start_date and coalesce(mh.end_date, '9999-12-31');
select e.name from Managers_History mh
                       join Employees e on mh.employee_id = e.id
where mh.manager_id = 2 and '2026-06-25' between mh.start_date and coalesce(mh.end_date, '9999-12-31');
select distinct d.name from Employment_History eh
                                join Departments d on eh.department_id = d.id
where eh.employee_id = 1 and eh.start_date <= '2026-06-25' and coalesce(eh.end_date, '9999-12-31') >= '2026-01-01';

select distinct p.title from Employment_History eh
                                 join Positions p on eh.position_id = p.id
where eh.employee_id = 1 and eh.start_date <= '2026-06-25' and coalesce(eh.end_date, '9999-12-31') >= '2026-01-01';

select sh.salary from Salary_History sh
where sh.employee_id = 1 and sh.start_date <= '2026-06-25' and coalesce(sh.end_date, '9999-12-31') >= '2026-01-01';
Тема 3
select s.name from Student_Groups sg
                       join Students s on sg.student_id = s.id
where sg.group_id = 1 and sg.leave_date is null;

select l.lesson_date, a.is_present from Attendance a
                                            join Lessons l on a.lesson_id = l.id
where a.student_id = 5 and l.topic_id = 10;
