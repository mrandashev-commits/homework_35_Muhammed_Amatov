1. Библиотечный справочник

Authors: id (int), name (varchar)
Work_Types: id (int), name (varchar)
Categories: id (int), name (varchar), parent_id (int)
Works: id (int), title (varchar), type_id (int)
Author_Work: author_id (int), work_id (int)
Work_Category: work_id (int), category_id (int)

2. Отдел кадров

Departments: id (int), name (varchar)
Positions: id (int), title (varchar)
Employees: id (int), name (varchar)
Employment_History: employee_id (int), department_id (int), position_id (int), start_date (date), end_date (date)
Salary_History: employee_id (int), salary (decimal), start_date (date), end_date (date)
Managers_History: employee_id (int), manager_id (int), start_date (date), end_date (date)

3. Учет на курсах программирования

Groups: id (int), name (varchar)
Students: id (int), name (varchar)
Student_Groups: student_id (int), group_id (int), join_date (date), leave_date (date)
Topics: id (int), title (varchar)
Lessons: id (int), group_id (int), topic_id (int), lesson_date (date)
Attendance: student_id (int), lesson_id (int), is_present (boolean)