-----------------------------------------------------------------------------------
--Batch 1: Basic SELECT & Column Selection
--Use your SMS tables to answer these. Write and run each query in SQL Developer.
---------------------------------------------------------------------------------
--Task 1:
--Select all columns from the DEPARTMENTS table.
 select * from  departments;
---------------------------------------------------------------------------------
--Task 2:
--Select only the department name,dept_code,established  from DEPARTMENTS.
  select dept_name,dept_code,established from departments;
---------------------------------------------------------------------------------
--Task 3
--Select first name, last name, and email from the STUDENTS table.
 select first_name,last_name, email from students;
---------------------------------------------------------------------------------
--Task 4
--Select all columns from TEACHERS.
 select * from teachers;
--------------------------------------------------------------------------------
--Task 5
--Select only the course name and credit hours from COURSES.
 select course_name,credit_hours from courses;
---------------------------------------------------------------------------------
--Batch 2: Column Aliases (AS)
--Aliases rename columns in your output — useful for readability, especially with abbreviated column names.
---------------------------------------------------------------------------------
--Task 1
--Select first_name and last_name from STUDENTS, aliasing them as "First Name" and "Last Name".
 select first_name as "First Name",
 last_name as "Last Name"
 from students;
 ------------------------------------------------------------------------------
--Task 2
--Select dept_name from DEPARTMENTS, aliased as "Department".
 select dept_name as "Department"
 from departments;
-------------------------------------------------------------------------------
--Task 3
--Select course_name and credit_hours from COURSES. Alias credit_hours as "Credits".
 select course_name,credit_hours as "Credits"
 from courses;
---------------------------------------------------------------------------------
--Task 4
--Select first_name and last_name from TEACHERS, and create a combined alias column called "Teacher Name"
--using string concatenation (||) to join first and last name with a space in between.
 select first_name || ' ' || last_name as "Teacher Name"
 from teachers;
---------------------------------------------------------------------------------
--Task 5
--Select email from STUDENTS, aliased as "Contact Email".
 select email as "Contact Email"
 from students;
---------------------------------------------------------------------------------
--Batch 3: WHERE Clause Filtering
--
---------------------------------------------------------------------------------
--Task 1
--Select all students from STUDENTS where the PROGRAM_ID equals a specific department (pick any real PROGRAM_ID value from your data).
 select * from students
 where program_id = 520;
---------------------------------------------------------------------------------
--Task 2
--Select all courses from COURSES where credit_hours is greater than 3.
 select  * from courses
 where credit_hours > 3;
---------------------------------------------------------------------------------
--  Task 3
--–Select all teachers from TEACHERS where last_name is exactly 'Khan' (or pick a –surname you know exists in your data).
 select * from teachers
 where last_name like 'Khan%' ;
--------------------------------------------------------------------------------
--  Task 4
--  Select all students from STUDENTS where email is not null.
 select * from  students 
 where email is not null;
--------------------------------------------------------------------------------
-- Task 5:
--  Select all programs from PROGRAMS where degree_level = 'Undergraduate'.
 select * from  programs
 where degree_level = 'Undergraduate';
--------------------------------------------------------------------------------
--  Task 6
--  Select all courses from COURSES where credit_hours is between 2 and 4 (use BETWEEN).
 select * from courses 
 where credit_hours between 2 and 4;
---------------------------------------------------------------------------------------
--  Task 7
--  Select all students from STUDENTS whose first_name starts with 'A' (use LIKE).
 select * from students 
 where first_name like 'A%';
---------------------------------------------------------------------------------------
--Batch 4: WHERE with AND / OR / IN / NOT
----------------------------------------------------------------------------------------
--Task 1
--Using And with  where clause
-- Select from  students table  where PROGRAM_ID = 520 AND email IS NOT NULL.
 select * from students 
 where program_id =520 and email is not null;
--------------------------------------------------------------------------------------
--Task 2
--using or with where clause
-- Select all courses from COURSES where credit_hours = 3 OR credit_hours = 4.
 select * from courses
 where credit_hours = 3 or credit_hours = 4;
--------------------------------------------------------------------------------------
--Task 3
-- Select all teachers from TEACHERS table whose LAST_NAME is IN a list of at least 3 surnames (pick real ones from your data).
    select * from teachers
    where last_name in ('Hussain','Noor','Tariq');
-------------------------------------------------------------------------------------
--Task 4
--Select all students from STUDENTS where PROGRAM_ID is NOT IN (520, 540,546 program ID).
   select * from students
   where program_id  not in (520,540,546);
--------------------------------------------------------------------------------------
--Task 5
-- Select all courses from COURSES where credit_hours is NOT BETWEEN 2 and 4.
   select * from courses
   where credit_hours not between 3 and 4;
----------------------------------------------------------------------------------------
--Task 6
-- Select all teachers from TEACHERS where LAST_NAME is NOT LIKE 'Khan%'.
   select * from teachers 
   where last_name not like 'Khan%';
------------------------------------------------------------------------------------
-- Batch 5: ORDER BY Clause
------------------------------------------------------------------------------------
--Task 1
-- Select all students from STUDENTS, ordered by last_name ascending.
   select * from students
   order by last_name asc;
----------------------------------------------------------------------------------- 
--Task 2
-- Select course_name and credit_hours from COURSES, ordered by credit_hours descending.
   select course_name, credit_hours
   from courses
   order by credit_hours desc;
----------------------------------------------------------------------------------
--Task 3
-- Select all teachers from TEACHERS, ordered by last_name ascending, then first_name ascending (multi-column sort).
   select * from teachers
   order by last_name asc,first_name desc;
---------------------------------------------------------------------------------
--Task 4
-- Select all students from STUDENTS where PROGRAM_ID = 520, ordered by first_name.
   select * from students 
   where program_id = 520
   order by first_name asc;
----------------------------------------------------------------------------------
--Task 5
-- Select dept_name from DEPARTMENTS, ordered by established descending (most recently established first).
   select dept_name from departments
   order by established desc;
-------------------------------------------------------------------------------------
-- Batch 6: DISTINCT & Row Limiting
------------------------------------------------------------------------------------
--Task 1
-- Select all distinct PROGRAM_ID values from STUDENTS (find out which programs actually have students enrolled).
   select distinct program_id 
   from students ;
-------------------------------------------------------------------------------------
--Task 2
-- Select all distinct credit_hours values from COURSES.
   select distinct credit_hours
   from courses;
-----------------------------------------------------------------------------------
--Task 3
-- Select the first 5 rows from STUDENTS using FETCH FIRST 5 ROWS ONLY.
  select * from students  
  fetch first 5 rows only ;
---------------------------------------------------------------------------------
--Task 4
 --Select course_name and credit_hours from COURSES, ordered by credit_hours descending, and limit to the top 3 results.
   select course_name, credit_hours from courses 
   order by credit_hours desc
   fetch first 3 rows only;
-------------------------------------------------------------------------------------
--Task 5
-- Select all distinct dept_name values from TEACHERS joined conceptually — actually, hold on: since TEACHERS likely has a dept_id not dept_name, just do: select all distinct dept_id values from TEACHERS.
  select distinct dept_id
  from teachers;
------------------------------------------------------------------------------------

