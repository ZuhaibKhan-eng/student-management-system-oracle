-------------------------------------------------------------------------------------
--Module 06: Aggregates — Concept Overview
/*Aggregate functions collapse multiple rows into a single summary value. The core ones in Oracle:
Function
Purpose
--COUNT(*) / COUNT(col)
Number of rows / non-null values
--SUM(col)
--Total of a numeric column
--AVG(col)
--Average of a numeric column
--MIN(col) / MAX(col)
--Smallest / largest value

GROUP BY — Groups rows that share a value in one or more columns, so aggregate functions run per group instead of over the whole table. 
E.g., "average grade per course" needs GROUP BY course_id.
Golden rule: every column in your SELECT list must either be in the GROUP BY clause, or be wrapped in an aggregate function. 
Oracle will throw ORA-00979: not a GROUP BY expression if you break this.
HAVING — Filters groups after aggregation, whereas WHERE filters rows before aggregation.
Classic mistake: trying to write WHERE COUNT(*) > 5 — that's invalid. It has to be HAVING COUNT(*) > 5.
Quick mental model:
FROM/JOIN ? WHERE (filter rows) ? GROUP BY (group rows) ? HAVING (filter groups) ? SELECT ? ORDER BY
*/
-------------------------------------------------------------------------------------------
--Batch 1: Basic Aggregates (COUNT, SUM, AVG, MIN, MAX)
--Try these using your SMS schema.
--------------------------------------------------------------------------------------------
--Task 01:
--Count the total number of students in the system.
 select count(*) from students;
----------------------------------------------------------------------------------------------
--Task 02:
--Find the average grade (marks) across all records in GRADES.
  select avg(marks_obtained)
  from grades;
  select avg(grade_points)
  from grades;
-----------------------------------------------------------------------------------------------
--Task 03:
--Find the highest and lowest marks ever recorded in GRADES.
  select max(marks_obtained),min(marks_obtained)
  from grades;
------------------------------------------------------------------------------------------------
--Task 04:
--Count how many courses exist per department (using COURSES joined to DEPARTMENTS).
  select d.dept_id,count(c.course_id)
  from courses c
  join programs p
  on c.program_id = p.program_id
  join departments d
  on p.dept_id = d.dept_id
  group by d.dept_id;
------------------------------------------------------------------------------------------------
--Task 05:
--Find the total number of enrollments per course (using ENROLLMENTS), showing course_id and the count, ordered by count descending.
  select c.course_id, count(e.enrollment_id) as enrollment_count
  from enrollments e
  join courses c
  on e.course_id = c.course_id
  group by c.course_id
  order by enrollment_count desc;
-------------------------------------------------------------------------------------------------
--Batch 2: GROUP BY with Multiple Columns, HAVING
-------------------------------------------------------------------------------------------------
--Task 01:
--Find the average marks per course, showing only courses where the average is above 70.
  select c.course_id, avg(g.marks_obtained) as avg_marks
  from courses c
  join enrollments e  
  on c.course_id = e.course_id
  join grades g
  on e.enrollment_id = g.enrollment_id
  group by c.course_id
  having avg(g.marks_obtained) > 70;   
-------------------------------------------------------------------------------------------------
--Task 02:
--Count the number of students enrolled per program (via STUDENTS ? PROGRAMS)
--showing program_id and student count, but only for programs with 
 select p.program_id, count(s.student_id)
 from  students s
 join programs p 
 on s.program_id = p.program_id
 group by p.program_id
 having count(s.student_id) > 4;
 --------------------------------------------------------------------------------
 --Task 03:
-- For each teacher, count how many courses they teach. Show teacher_id and course count, ordered by count descending.
  select t.teacher_id,count(c.course_id) as count_courses
  from courses c
  join teachers t
  on c.teacher_id = t.teacher_id
  group by t.teacher_id
  order by count_courses desc;
---------------------------------------------------------------------------------
--Task 04:
--Find the number of enrollments per course per semester (assuming ENROLLMENTS has a semester or academic term column 
-- check your schema first). Group by both course_id and the term column.
  select c.course_id,c.semester,count(e.enrollment_id) as count_enrollments
  from  courses c
  join enrollments e
  on c.course_id = e.course_id
  group by c.course_id,c.semester;
-----------------------------------------------------------------------------------
--Task 05:
--Find departments where the total number of courses (across all their programs) is greater than 3. 
  select d.dept_id,count(c.course_id) as course_count
  from departments d
  join programs p
  on d.dept_id = p.dept_id
  join courses c
  on p.program_id = c.program_id
  group by d.dept_id
  having count(c.course_id) > 3;
--------------------------------------------------------------------------------------
--Batch 3: Combining Aggregates with JOIN + Multiple Conditions
--------------------------------------------------------------------------------------
--Task 01:
--For each student, show their name and their average marks across all their graded enrollments. 
--Only show students with an average above 60.
  select s.student_id, s.first_name,s.last_name,avg(g.marks_obtained) as avg_marks
  from students s 
  join enrollments e
  on s.student_id = e.student_id
  join grades g 
  on e.enrollment_id = g.enrollment_id
  group by s.student_id,s.first_name,s.last_name
  having avg(g.marks_obtained) > 60 ;
---------------------------------------------------------------------------------------
--Task 02:
--Find the number of students per department (via STUDENTS ? PROGRAMS ? DEPARTMENTS), ordered by count descending.
  select d.dept_id,count(s.student_id) as number_of_student
  from students s
  join programs p
  on s.program_id = p.program_id
  join departments d 
  on p.dept_id = d.dept_id
  group by d.dept_id
  order by number_of_student desc ;
--------------------------------------------------------------------------------------
--Task 03:
--For each course, show the course name, number of students enrolled, and average marks 
--but only for courses with at least 3 enrolled students.
 select c.course_id,c.course_name,count(e.enrollment_id) as student_count,
  avg(g.marks_obtained) as avg_marks
  from courses c
  join  enrollments e
  on c.course_id = e.course_id
  join grades g
  on e.enrollment_id = g.enrollment_id
  group by c.course_id,c.course_name
  having count(e.enrollment_id) >= 3;
 ----------------------------------------------------------------------------------------------
--Task 04:
--Find teachers who teach more than 2 courses. Show teacher name (not just ID) and course count
  select t.teacher_id,t.first_name,t.last_name,count(c.course_id) as course_count
  from teachers t
  join courses c
  on t.teacher_id = c.teacher_id
  group by t.teacher_id,t.first_name,t.last_name
  having count(c.course_id) > 2;
----------------------------------------------------------------------------------------------
--Task 05:
--Find the total credit hours taught by each teacher (sum of credit_hours across all courses they teach), ordered descending.
  select t.teacher_id,sum(c.credit_hours) as total_credit_hours
  from teachers t
  join courses c
  on t.teacher_id = c.teacher_id
  group by t.teacher_id
  order by total_credit_hours desc;
-------------------------------------------------------------------------------------------
--Batch 4: HAVING + Aggregates Review (mixed difficulty)
-------------------------------------------------------------------------------------------
--Task 01:
--Find courses where the average marks is below the overall average marks across all courses 
--(hint: you'll need a subquery here — it's okay if this one is tricky, we'll cover subqueries properly in Module 07, just give it a shot).
  select c.course_id,c.course_name,avg(g.marks_obtained) as avg_marks
  from courses c
  join enrollments e
  on c.course_id = e.course_id
  join grades g
  on e.enrollment_id =g.enrollment_id
  group by c.course_id,c.course_name
  having avg(g.marks_obtained) < (select avg(marks_obtained) from grades);
----------------------------------------------------------------------------------------------
--Task 02:
--Count how many students have enrollment_status = 'Active' per course, only showing courses with more than 5 active enrollments.
  select c.course_id,count(e.enrollment_id) as active_count
  from courses c
  join enrollments e
  on c.course_id = e.course_id
  where e.enrollment_status = 'Enrolled'
  group by c.course_id
  having count(e.enrollment_id) > 2;
----------------------------------------------------------------------------------------------
--Task 03:
--Find departments with more than 2 programs, showing department name and program count.
  select d.dept_id,d.dept_name,count(p.program_id) as program_count
  from departments d
  join programs p
  on d.dept_id = p.dept_id
  group by d.dept_id,d.dept_name
  having count(p.program_id) > 2;
------------------------------------------------------------------------------------------------
  --Task 04:
--Find the attendance percentage per student (present days / total days * 100), 
--rounded to 2 decimal places, only for students with attendance below 75%.
  select s.student_id,
  count(a.attendance_id) as total_days,
  sum(case when a.status = 'Present' then 1 else 0 end) as present_days,
  round(sum(case when a.status = 'Present' then 1 else 0 end) 
             / count(a.attendance_id) * 100, 2) as attendance_percentage
  from students s
  join attendance a
  on s.student_id = a.student_id
  group by s.student_id
  having round(sum(case when a.status = 'Present' then 1 else 0 end) 
             / count(a.attendance_id) * 100, 2) < 75 ;
--------------------------------------------------------------------------------------------------
--Task 05:
--Write a query that shows, for each course, the course name, total enrollments, average marks, and highest mark — all in one result set.
  select c.course_id,c.course_name,
  count(e.enrollment_id) as total_enrollment,
  avg(g.marks_obtained) as avg_marks,
  max(g.marks_obtained) as highest_marks
  from courses c
  join enrollments e
  on c.course_id = e.course_id
  join grades g
  on e.enrollment_id = g.enrollment_id
  group by c.course_id,c.course_name;
----------------------------------------------------------------------------------------------------
