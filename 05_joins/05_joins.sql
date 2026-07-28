--------------------------------------------------------------------------------------------------
--Module05:
--Join and its types:
--A JOIN combines rows from two or more tables based on a related column (usually a foreign key).
--Types of JOIN we'll cover:
--INNER JOIN — only matching rows in both tables
--LEFT JOIN — all rows from left table, matched or NULL from right
--Multi-table joins — 3+ tables chained together
--Self-consideration (not self-join yet, that's more advanced)
-------------------------------------------------------------------------------------------------
--Batch 1: INNER JOIN Basics
------------------------------------------------------------------------------------------------
--Task 1
-- Select first_name, last_name from STUDENTS, and program_name from PROGRAMS, joining on PROGRAM_ID.
   select s.first_name,s.last_name,p.program_name
   from students s
   inner join programs p
   on s.program_id = p.program_id; 
----------------------------------------------------------------------------------------------------
--Task 2
-- Select dept_name from DEPARTMENTS and program_name from PROGRAMS, joining on DEPT_ID.
   select d.dept_name,p.program_name
   from departments d
   inner join programs p
   on d.dept_id = p.dept_id;
-----------------------------------------------------------------------------------------------------
--Task 3
-- Select first_name, last_name from TEACHERS and dept_name from DEPARTMENTS, joining on DEPT_ID.
  select t.first_name,t.last_name,d.dept_name
  from teachers t
  inner join departments d
  on t.dept_id = d.dept_id;
-----------------------------------------------------------------------------------------------------
--Task 4
-- Select course_name from COURSES along with the teacher's first_name and last_name from TEACHERS (join on whatever FK links them — check your schema).
   select c.course_name, t.first_name,t.last_name
   from courses c
   inner join teachers t
   on c.teacher_id = t.teacher_id;
--------------------------------------------------------------------------------------------------------
--Task 5
-- Select student first_name, last_name, their program_name, and the dept_name of that program — this needs a 3-table join: STUDENTS ? PROGRAMS ? DEPARTMENTS.
   select s.first_name,s.last_name,p.program_name,d.dept_name
   from students s
   inner join programs p
   on s.program_id = p.program_id
   inner join departments d
   on p.dept_id = d.dept_id;   
 select s.first_name,s.last_name,p.program_name,d.dept_name
 from students s
 inner join programs p on s.program_id = p.program_id
 inner join departments d on d.dept_id = p.dept_id;
------------------------------------------------------------------------------------------------------------
--Batch 2: LEFT JOIN
--Quick Concept Recap
--LEFT JOIN returns all rows from the left table, plus matching rows from the right table. If there's no match, the right table's columns show as NULL.
--This is powerful for finding gaps — students with no enrollments, courses with no teacher, departments with no programs, etc.
-------------------------------------------------------------------------------------------------------------
--Task 1
-- Select all students' first_name, last_name, and their program_name — using LEFT JOIN from STUDENTS to PROGRAMS. (Even if every student currently has a program, write it as a LEFT JOIN — the goal is syntax practice.)
  select s.first_name,s.last_name,p.program_name
  from students s
  left join programs p
  on s.program_id = p.program_id;
-------------------------------------------------------------------------------------------------------------
--Task 2
-- Select all courses' course_name, along with the teacher's first_name and last_name — using LEFT JOIN from COURSES to TEACHERS. This will reveal any courses that don't have a teacher assigned (NULL in teacher columns).
   select c.course_name,t.first_name,t.last_name  
   from courses c
   left join teachers t 
   on c.teacher_id = t.teacher_id;
-------------------------------------------------------------------------------------------------------------
--Task 3
-- Select all departments' dept_name along with program_name from PROGRAMS — using LEFT JOIN from DEPARTMENTS to PROGRAMS. This finds departments with zero programs, if any exist.
   select d.dept_name,p.program_name 
   from departments d
   left join programs p 
   on d.dept_id = p.dept_id;
-------------------------------------------------------------------------------------------------------------- 
--Task 4
-- Select all teachers' first_name, last_name, and course_name — using LEFT JOIN from TEACHERS to COURSES. This finds teachers not currently assigned to any course.
   select t.first_name,t.last_name,c.course_name
   from teachers t 
   left join courses c
   on t.teacher_id = c.teacher_id;
---------------------------------------------------------------------------------------------------------------
--Task 5 (the important one)
-- Using Task 2's query, add a WHERE clause to filter only the courses that have no teacher assigned (i.e. teacher_id IS NULL on the right side). This is a classic real-world "find the gap" query.
   select c.course_name,t.first_name,t.last_name  
   from courses c
   left join teachers t 
   on c.teacher_id = t.teacher_id
   where t.teacher_id is null;
-------------------------------------------------------------------------------------------------
--Batch 3: Multi-Table Joins (3+ tables)
--Concept recap: You chain joins by connecting each table to the next via its FK, one JOIN clause at a time. 
--Order usually follows the FK chain, but SQL doesn't care about direction as long as the ON conditions are correct.
----------------------------------------------------------------------------------------------------
--Task 1
-- Select student first_name, last_name, course_name, and the grade 
--this needs STUDENTS ? ENROLLMENTS ? COURSES ? GRADES (check how GRADES actually links — to ENROLLMENTS or directly to STUDENTS+COURSES).
  select s.first_name,s.last_name,c.course_name,g.grade_letter,e.enrollment_id
  from students s
  join enrollments e 
  on s.student_id = e.student_id
  join courses c
  on e.course_id = c.course_id
  join grades g 
  on e.enrollment_id = g.enrollment_id;
---------------------------------------------------------------------------------------------------------
--Task 2
-- Select course_name, teacher first_name/last_name, and dept_name — COURSES ? TEACHERS ? DEPARTMENTS.
  select c.course_name,t.first_name,t.last_name, d.dept_name
  from courses c
  join teachers t
  on c.teacher_id = t.teacher_id
  join departments d
  on t.dept_id = d.dept_id;
--- ----- -------------------------------------------------------------------------------------------------------
--Task 3
-- Select student first_name, last_name, program_name, and dept_name of their program — 
--STUDENTS ? PROGRAMS ? DEPARTMENTS. (Same as Batch 1 Task 5 — but this time use INNER JOIN and see if you get the same row count as before, as a sanity check.)
  select s.first_name,s.last_name,p.program_name,d.dept_name
  from students s
  join programs p
  on s.program_id = p.program_id
  join departments d
  on p.dept_id = d.dept_id ;
  select s.first_name,s.last_name,p.program_name,d.dept_name
  from students s
  inner join programs p
  on s.program_id = p.program_id
  inner join departments d
  on p.dept_id = d.dept_id ;
  -------------------------------------------------------------------------------------------------------------------
--Task 4
-- Select student first_name, last_name, course_name they're enrolled in, and the teacher_name teaching that course — 
--4-table chain: STUDENTS ? ENROLLMENTS ? COURSES ? TEACHERS.
   select s.first_name,s.last_name,c.course_name,e.enrollment_id,t.first_name,t.last_name
   from students s
   join enrollments e
   on s.student_id = e.student_id
   join courses c 
   on e.course_id = c.course_id
  join teachers t
  on c.teacher_id = t.teacher_id;
-----------------------------------------------------------------------------------------------------------------------
--Batch 4: RIGHT JOIN & Review
--Concept recap: RIGHT JOIN is the mirror of LEFT JOIN — all rows from the right table, matched or NULL from the left. 
--In practice, most people avoid RIGHT JOIN and just flip the table order to use LEFT JOIN instead, but you should know the syntax.
---------------------------------------------------------------------------------------------------------------------
--Task 1
-- Rewrite Batch 2 Task 2 (COURSES LEFT JOIN TEACHERS) as a RIGHT JOIN instead — 
--starting from TEACHERS on the left, COURSES on the right. Confirm you get the same result set as the original LEFT JOIN version.
-- Select all courses' course_name, along with the teacher's first_name and last_name — using LEFT JOIN from COURSES to TEACHERS. This will reveal any courses that don't have a teacher assigned (NULL in teacher columns).
   select c.course_name,t.first_name,t.last_name  
   from teachers t
   right join courses c 
   on t.teacher_id = c.teacher_id;
--------------------------------------------------------------------------------------------------------
--Task 2
-- Select dept_name and program_name, using RIGHT JOIN from PROGRAMS to DEPARTMENTS 
--(i.e., all departments should show even with no programs). Compare this to your Batch 2 Task 3 answer — should be logically equivalent.
  select d.dept_name,p.program_name
  from programs p
  right join departments d
  on p.dept_id = d.dept_id;
----------------------------------------------------------------------------------------------------------
--Task 3
-- Select all teachers (first_name, last_name) and course_name,
--using RIGHT JOIN starting from COURSES on the left, TEACHERS on the right — so every teacher shows even if they have no course.
  select t.first_name,t.last_name,c.course_name
  from courses c
  right join teachers t
  on c.teacher_id = t.teacher_id;
------------------------------------------------------------------------------------------------------------
-- Task 4 (the important one)
-- RIGHT JOIN is rarely used in practice because it breaks the natural reading order of a query.
-- With "A RIGHT JOIN B", the table being fully preserved (B) sits at the END of the JOIN clause,
-- so you have to scan the whole statement just to figure out which table matters most.
-- With LEFT JOIN, that same table sits right after FROM, at the START — much easier to read at a glance.
-- Because of this, most developers just flip the table order and use LEFT JOIN instead of RIGHT JOIN,
-- since both produce the same result when the tables and ON condition are swapped accordingly.
 select t.first_name, t.last_name, c.course_name
 from teachers t
 left join courses c
 on t.teacher_id = c.teacher_id;
--------------------------------------------------------------------------------------------------------

