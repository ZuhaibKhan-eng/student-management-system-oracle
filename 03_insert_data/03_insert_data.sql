/*   MODULE 3 - INSERT DATA
   Student Management System (SMS) - Pakistani University Context
   ----------------------------------------------------------------
   NOTE: Run this AFTER all 8 tables from 02_create_tables.sql
   have been successfully created.
   ----------------------------------------------------------------
-- 1. DEPARTMENTS (15 rows)
  ------------------------------------------------------------------
  */
  INSERT INTO DEPARTMENTS (dept_id, dept_name,dept_code, established) VALUES (dept_seq.NEXTVAL, 'Computer Science','CS', DATE '2000-08-15');
  INSERT INTO departments(dept_id,dept_name,dept_code,established) values (dept_seq.nextval,'Software Engineering','SE',Date '2000-08-20');
  INSERT INTO DEPARTMENTS(dept_id,dept_name,dept_code,established) values (dept_seq.nextval,'Electrical Engineering','EE',DATE '1998-03-10');
  INSERT INTO DEPARTMENTS(dept_id,dept_name,dept_code,established) values (dept_seq.nextval,'Mechanical Engineering','ME', Date '1995-07-22');
  INSERT INTO DEPARTMENTS (dept_id,dept_name,dept_code,established) VALUES (dept_seq.NEXTVAL, 'Mathematics','MM',DATE '1994-02-20');
  INSERT INTO DEPARTMENTS (dept_id,dept_name,dept_code,established) VALUES (dept_seq.NEXTVAL, 'Business Administration','BBA',DATE '2001-05-12');
  INSERT INTO DEPARTMENTS (dept_id,dept_name,dept_code,established) VALUES (dept_seq.NEXTVAL, 'Physics','PY',DATE '1994-02-20');
  INSERT INTO DEPARTMENTS (dept_id,dept_name,dept_code,established) VALUES (dept_seq.NEXTVAL, 'English Literature','EL',DATE '1992-09-09');
  INSERT INTO DEPARTMENTS (dept_id,dept_name,dept_code,established) VALUES (dept_seq.NEXTVAL, 'Economics','ES', DATE '1999-04-14');
  INSERT INTO DEPARTMENTS (dept_id,dept_name,dept_code,established) VALUES (dept_seq.NEXTVAL, 'Biotechnology','BY', DATE '2006-08-30');
  INSERT INTO DEPARTMENTS (dept_id,dept_name,dept_code,established) VALUES (dept_seq.NEXTVAL, 'Architecture','AE', DATE '2002-06-25');
  INSERT INTO DEPARTMENTS (dept_id,dept_name,dept_code,established) VALUES (dept_seq.NEXTVAL, 'Artificial Intelligence','AI', DATE '2019-09-01');
  INSERT INTO DEPARTMENTS (dept_id,dept_name,dept_code,established) VALUES (dept_seq.NEXTVAL, 'Data Science','DS', DATE '2020-01-15');
  INSERT INTO DEPARTMENTS (dept_id,dept_name,dept_code,established) VALUES (dept_seq.NEXTVAL, 'Telecommunication Engineering','TE', DATE '2004-10-10');
  INSERT INTO DEPARTMENTS (dept_id,dept_name,dept_code,established) VALUES (dept_seq.NEXTVAL, 'Environmental Science','ESS', DATE '2008-03-03');
  INSERT INTO DEPARTMENTS (dept_id,dept_name,dept_code,established) VALUES (dept_seq.NEXTVAL, 'Psychology','POY', DATE '2010-07-19');
  
  COMMIT;
  ------------------------------------------------------------------------------
 -- 2. PROGRAMS (25 rows) - using actual dept_id values
 desc programs;
 select sequence_name from user_sequences order by sequence_name;
 SELECT constraint_name, search_condition 
FROM user_constraints 
WHERE table_name = 'PROGRAMS';
--------------------------------------------------------------------------------
INSERT INTO PROGRAMS (program_id, dept_id, program_name, program_code, degree_level, duration_years, total_credits) VALUES (PROGRAMS_SEQ.NEXTVAL, 205, 'BS Computer Science', 'BSCS', 'Undergraduate', 4, 130);
INSERT INTO PROGRAMS (program_id, dept_id, program_name, program_code, degree_level, duration_years, total_credits) VALUES (PROGRAMS_SEQ.NEXTVAL, 205, 'MS Computer Science', 'MSCS', 'Postgraduate', 2, 72);
INSERT INTO PROGRAMS (program_id, dept_id, program_name, program_code, degree_level, duration_years, total_credits) VALUES (PROGRAMS_SEQ.NEXTVAL, 205, 'PhD Computer Science', 'PHDCS', 'Postgraduate', 4, 48);
INSERT INTO PROGRAMS (program_id, dept_id, program_name, program_code, degree_level, duration_years, total_credits) VALUES (PROGRAMS_SEQ.NEXTVAL, 210, 'BS Software Engineering', 'BSSE', 'Undergraduate', 4, 133);
INSERT INTO PROGRAMS (program_id, dept_id, program_name, program_code, degree_level, duration_years, total_credits) VALUES (PROGRAMS_SEQ.NEXTVAL, 210, 'MS Software Engineering', 'MSSE', 'Postgraduate', 2, 72);
INSERT INTO PROGRAMS (program_id, dept_id, program_name, program_code, degree_level, duration_years, total_credits) VALUES (PROGRAMS_SEQ.NEXTVAL, 130, 'BBA', 'BBA', 'Undergraduate', 4, 124);
INSERT INTO PROGRAMS (program_id, dept_id, program_name, program_code, degree_level, duration_years, total_credits) VALUES (PROGRAMS_SEQ.NEXTVAL, 130, 'MBA', 'MBA', 'Postgraduate', 2, 72);
INSERT INTO PROGRAMS (program_id, dept_id, program_name, program_code, degree_level, duration_years, total_credits) VALUES (PROGRAMS_SEQ.NEXTVAL, 135, 'BS Mathematics', 'BSMATH', 'Undergraduate', 4, 124);
INSERT INTO PROGRAMS (program_id, dept_id, program_name, program_code, degree_level, duration_years, total_credits) VALUES (PROGRAMS_SEQ.NEXTVAL, 135, 'MS Mathematics', 'MSMATH', 'Postgraduate', 2, 66);
INSERT INTO PROGRAMS (program_id, dept_id, program_name, program_code, degree_level, duration_years, total_credits) VALUES (PROGRAMS_SEQ.NEXTVAL, 145, 'BS Physics', 'BSPHY', 'Undergraduate', 4, 124);
INSERT INTO PROGRAMS (program_id, dept_id, program_name, program_code, degree_level, duration_years, total_credits) VALUES (PROGRAMS_SEQ.NEXTVAL, 150, 'BS Chemistry', 'BSCHEM', 'Undergraduate', 4, 124);
INSERT INTO PROGRAMS (program_id, dept_id, program_name, program_code, degree_level, duration_years, total_credits) VALUES (PROGRAMS_SEQ.NEXTVAL, 155, 'BA English Literature', 'BAENG', 'Undergraduate', 4, 120);
INSERT INTO PROGRAMS (program_id, dept_id, program_name, program_code, degree_level, duration_years, total_credits) VALUES (PROGRAMS_SEQ.NEXTVAL, 160, 'BS Economics', 'BSECO', 'Undergraduate', 4, 124);
INSERT INTO PROGRAMS (program_id, dept_id, program_name, program_code, degree_level, duration_years, total_credits) VALUES (PROGRAMS_SEQ.NEXTVAL, 160, 'MS Economics', 'MSECO', 'Postgraduate', 2, 66);
INSERT INTO PROGRAMS (program_id, dept_id, program_name, program_code, degree_level, duration_years, total_credits) VALUES (PROGRAMS_SEQ.NEXTVAL, 165, 'BS Biotechnology', 'BSBT', 'Undergraduate', 4, 130);
INSERT INTO PROGRAMS (program_id, dept_id, program_name, program_code, degree_level, duration_years, total_credits) VALUES (PROGRAMS_SEQ.NEXTVAL, 170, 'B.Arch Architecture', 'BARCH', 'Undergraduate', 5, 160);
INSERT INTO PROGRAMS (program_id, dept_id, program_name, program_code, degree_level, duration_years, total_credits) VALUES (PROGRAMS_SEQ.NEXTVAL, 175, 'BS Artificial Intelligence', 'BSAI', 'Undergraduate', 4, 130);
INSERT INTO PROGRAMS (program_id, dept_id, program_name, program_code, degree_level, duration_years, total_credits) VALUES (PROGRAMS_SEQ.NEXTVAL, 175, 'MS Artificial Intelligence', 'MSAI', 'Postgraduate', 2, 72);
INSERT INTO PROGRAMS (program_id, dept_id, program_name, program_code, degree_level, duration_years, total_credits) VALUES (PROGRAMS_SEQ.NEXTVAL, 180, 'BS Data Science', 'BSDS', 'Undergraduate', 4, 130);
INSERT INTO PROGRAMS (program_id, dept_id, program_name, program_code, degree_level, duration_years, total_credits) VALUES (PROGRAMS_SEQ.NEXTVAL, 180, 'MS Data Science', 'MSDS', 'Postgraduate', 2, 72);
INSERT INTO PROGRAMS (program_id, dept_id, program_name, program_code, degree_level, duration_years, total_credits) VALUES (PROGRAMS_SEQ.NEXTVAL, 185, 'BS Telecommunication Engineering', 'BSTE', 'Undergraduate', 4, 136);
INSERT INTO PROGRAMS (program_id, dept_id, program_name, program_code, degree_level, duration_years, total_credits) VALUES (PROGRAMS_SEQ.NEXTVAL, 185, 'MS Telecommunication Engineering', 'MSTE', 'Postgraduate', 2, 72);
INSERT INTO PROGRAMS (program_id, dept_id, program_name, program_code, degree_level, duration_years, total_credits) VALUES (PROGRAMS_SEQ.NEXTVAL, 195, 'BS Environmental Science', 'BSES', 'Undergraduate', 4, 124);
INSERT INTO PROGRAMS (program_id, dept_id, program_name, program_code, degree_level, duration_years, total_credits) VALUES (PROGRAMS_SEQ.NEXTVAL, 200, 'BS Psychology', 'BSPSY', 'Undergraduate', 4, 120);
INSERT INTO PROGRAMS (program_id, dept_id, program_name, program_code, degree_level, duration_years, total_credits) VALUES (PROGRAMS_SEQ.NEXTVAL, 200, 'MS Psychology', 'MSPSY', 'Postgraduate', 2, 66);


 COMMIT;
 
 ------------------------------------------------------------------------------
 -- 3. TEACHERS (25 rows)
-- dept_id references 1-18 from DEPARTMENTS insert order above
--------------------------------------------------------------------------------
 INSERT INTO TEACHERS (teacher_id, dept_id, first_name, last_name, email, phone, designation, joining_date) VALUES (TEACHERS_SEQ.NEXTVAL, 130, 'Ahmed', 'Raza', 'ahmed.raza@sms.edu.pk', '0301-1000001', 'Professor', DATE '2010-08-01');
 INSERT INTO TEACHERS (teacher_id,dept_id,first_name,last_name,email,phone,designation,joining_date) VALUES (TEACHERS_SEQ.NEXTVAL,130,'Sara','Khalid','sara.khalid@sms.edu.pk','0301-1000002','Associate Professor',DATE '2013-09-15');
 INSERT INTO TEACHERS (teacher_id, dept_id, first_name, last_name, email, phone, designation, joining_date) VALUES (TEACHERS_SEQ.NEXTVAL, 130, 'Bilal', 'Hussain', 'bilal.hussain@sms.edu.pk', '0301-1000003', 'Lecturer', DATE '2018-01-10');
INSERT INTO TEACHERS (teacher_id, dept_id, first_name, last_name, email, phone, designation, joining_date) VALUES (TEACHERS_SEQ.NEXTVAL, 135, 'Ayesha', 'Noor', 'ayesha.noor@sms.edu.pk', '0301-1000004', 'Assistant Professor', DATE '2016-03-22');
INSERT INTO TEACHERS (teacher_id, dept_id, first_name, last_name, email, phone, designation, joining_date) VALUES (TEACHERS_SEQ.NEXTVAL, 135, 'Usman', 'Tariq', 'usman.tariq@sms.edu.pk', '0301-1000005', 'Lecturer', DATE '2019-08-19');
INSERT INTO TEACHERS (teacher_id, dept_id, first_name, last_name, email, phone, designation, joining_date) VALUES (TEACHERS_SEQ.NEXTVAL, 145, 'Fatima', 'Iqbal', 'fatima.iqbal@sms.edu.pk', '0301-1000006', 'Professor', DATE '2009-02-14');
INSERT INTO TEACHERS (teacher_id, dept_id, first_name, last_name, email, phone, designation, joining_date) VALUES (TEACHERS_SEQ.NEXTVAL, 145, 'Hamza', 'Aslam', 'hamza.aslam@sms.edu.pk', '0301-1000007', 'Assistant Professor', DATE '2017-06-05');
INSERT INTO TEACHERS (teacher_id, dept_id, first_name, last_name, email, phone, designation, joining_date) VALUES (TEACHERS_SEQ.NEXTVAL, 150, 'Zainab', 'Malik', 'zainab.malik@sms.edu.pk', '0301-1000008', 'Associate Professor', DATE '2014-09-09');
INSERT INTO TEACHERS (teacher_id, dept_id, first_name, last_name, email, phone, designation, joining_date) VALUES (TEACHERS_SEQ.NEXTVAL, 150, 'Faisal', 'Mehmood', 'faisal.mehmood@sms.edu.pk', '0301-1000009', 'Lecturer', DATE '2020-01-20');
INSERT INTO TEACHERS (teacher_id, dept_id, first_name, last_name, email, phone, designation, joining_date) VALUES (TEACHERS_SEQ.NEXTVAL, 155, 'Hina', 'Saeed', 'hina.saeed@sms.edu.pk', '0301-1000010', 'Professor', DATE '2008-07-30');
INSERT INTO TEACHERS (teacher_id, dept_id, first_name, last_name, email, phone, designation, joining_date) VALUES (TEACHERS_SEQ.NEXTVAL, 155, 'Ali', 'Raza', 'ali.raza@sms.edu.pk', '0301-1000011', 'Lecturer', DATE '2021-03-12');
INSERT INTO TEACHERS (teacher_id, dept_id, first_name, last_name, email, phone, designation, joining_date) VALUES (TEACHERS_SEQ.NEXTVAL, 160, 'Maria', 'Yousaf', 'maria.yousaf@sms.edu.pk', '0301-1000012', 'Professor', DATE '2007-11-25');
INSERT INTO TEACHERS (teacher_id, dept_id, first_name, last_name, email, phone, designation, joining_date) VALUES (TEACHERS_SEQ.NEXTVAL, 160, 'Junaid', 'Akhtar', 'junaid.akhtar@sms.edu.pk', '0301-1000013', 'Assistant Professor', DATE '2015-05-18');
INSERT INTO TEACHERS (teacher_id, dept_id, first_name, last_name, email, phone, designation, joining_date) VALUES (TEACHERS_SEQ.NEXTVAL, 165, 'Saima', 'Pervez', 'saima.pervez@sms.edu.pk', '0301-1000014', 'Associate Professor', DATE '2012-10-02');
INSERT INTO TEACHERS (teacher_id, dept_id, first_name, last_name, email, phone, designation, joining_date) VALUES (TEACHERS_SEQ.NEXTVAL, 165, 'Kashif', 'Javed', 'kashif.javed@sms.edu.pk', '0301-1000015', 'Lecturer', DATE '2019-02-28');
INSERT INTO TEACHERS (teacher_id, dept_id, first_name, last_name, email, phone, designation, joining_date) VALUES (TEACHERS_SEQ.NEXTVAL, 170, 'Nadia', 'Farooq', 'nadia.farooq@sms.edu.pk', '0301-1000016', 'Professor', DATE '2006-04-17');
INSERT INTO TEACHERS (teacher_id, dept_id, first_name, last_name, email, phone, designation, joining_date) VALUES (TEACHERS_SEQ.NEXTVAL, 170, 'Amber', 'Khan', 'amber.khan@sms.edu.pk', '0301-1000017', 'Assistant Professor', DATE '2017-05-10');
INSERT INTO TEACHERS (teacher_id, dept_id, first_name, last_name, email, phone, designation, joining_date) VALUES (TEACHERS_SEQ.NEXTVAL, 175, 'Imran', 'Shah', 'imran.shah@sms.edu.pk', '0301-1000018', 'Assistant Professor', DATE '2016-12-08');
INSERT INTO TEACHERS (teacher_id, dept_id, first_name, last_name, email, phone, designation, joining_date) VALUES (TEACHERS_SEQ.NEXTVAL, 180, 'Rabia', 'Aziz', 'rabia.aziz@sms.edu.pk', '0301-1000019', 'Associate Professor', DATE '2013-01-30');
INSERT INTO TEACHERS (teacher_id, dept_id, first_name, last_name, email, phone, designation, joining_date) VALUES (TEACHERS_SEQ.NEXTVAL, 185, 'Adeel', 'Ahmed', 'adeel.ahmed@sms.edu.pk', '0301-1000020', 'Lecturer', DATE '2020-08-11');
INSERT INTO TEACHERS (teacher_id, dept_id, first_name, last_name, email, phone, designation, joining_date) VALUES (TEACHERS_SEQ.NEXTVAL, 185, 'Mahnoor', 'Riaz', 'mahnoor.riaz@sms.edu.pk', '0301-1000021', 'Professor', DATE '2011-06-23');
INSERT INTO TEACHERS (teacher_id, dept_id, first_name, last_name, email, phone, designation, joining_date) VALUES (TEACHERS_SEQ.NEXTVAL, 195, 'Omar', 'Siddiqui', 'omar.siddiqui@sms.edu.pk', '0301-1000022', 'Associate Professor', DATE '2014-04-04');
INSERT INTO TEACHERS (teacher_id, dept_id, first_name, last_name, email, phone, designation, joining_date) VALUES (TEACHERS_SEQ.NEXTVAL, 200, 'Shahid', 'Latif', 'shahid.latif@sms.edu.pk', '0301-1000023', 'Lecturer', DATE '2018-09-27');
INSERT INTO TEACHERS (teacher_id, dept_id, first_name, last_name, email, phone, designation, joining_date) VALUES (TEACHERS_SEQ.NEXTVAL, 205, 'Sana', 'Mirza', 'sana.mirza@sms.edu.pk', '0301-1000024', 'Assistant Professor', DATE '2019-11-14');
INSERT INTO TEACHERS (teacher_id, dept_id, first_name, last_name, email, phone, designation, joining_date) VALUES (TEACHERS_SEQ.NEXTVAL, 210, 'Waqas', 'Ali', 'waqas.ali@sms.edu.pk', '0301-1000025', 'Lecturer', DATE '2021-07-19');

commit;

---------------------------------------------------------------------------------
-- 4. COURSES (32 rows)
-- dept_id references 1-18, teacher_id references 1-25
---------------------------------------------------------------------------------
-- Dept 130 (BBA/MBA) - program 524, teachers 1000, 1003, 1006
INSERT INTO COURSES (course_id, course_name, credit_hours, program_id, teacher_id, course_code, semester) VALUES (courses_seq.NEXTVAL, 'Principles of Management', 3, 524, 1000, 'BBA101', 'Fall 2025');
INSERT INTO COURSES (course_id,program_id,teacher_id,course_name,course_code,credit_hours,semester) VALUES (courses_seq.NEXTVAL,524,1003,'Financial Accounting','BBA102',3,'Spring 2026');
INSERT INTO COURSES (course_id, course_name, credit_hours, program_id, teacher_id, course_code, semester) VALUES (courses_seq.NEXTVAL, 'Marketing Management', 3, 526, 1006, 'MBA201', 'Fall 2025');

-- Dept 135 (BS/MS Mathematics) - program 528/530, teachers 1009, 1012
INSERT INTO COURSES (course_id, course_name, credit_hours, program_id, teacher_id, course_code, semester) VALUES (courses_seq.NEXTVAL, 'Calculus I', 3, 528, 1009, 'MATH101', 'Fall 2025');
INSERT INTO COURSES (course_id, course_name, credit_hours, program_id, teacher_id, course_code, semester) VALUES (courses_seq.NEXTVAL, 'Linear Algebra', 3, 530, 1012, 'MATH201', 'Spring 2026');

-- Dept 145 (BS Physics) - program 532, teachers 1015, 1018
INSERT INTO COURSES (course_id, course_name, credit_hours, program_id, teacher_id, course_code, semester) VALUES (courses_seq.NEXTVAL, 'Classical Mechanics', 3, 532, 1015, 'PHY101', 'Fall 2025');
INSERT INTO COURSES (course_id, course_name, credit_hours, program_id, teacher_id, course_code, semester) VALUES (courses_seq.NEXTVAL, 'Signals and Systems', 3, 532, 1018, 'PHY102', 'Spring 2026');

-- Dept 150 (BS Chemistry) - program 534, teachers 1021, 1024
INSERT INTO COURSES (course_id, course_name, credit_hours, program_id, teacher_id, course_code, semester) VALUES (courses_seq.NEXTVAL, 'Organic Chemistry', 3, 534, 1021, 'CHEM101', 'Fall 2025');
INSERT INTO COURSES (course_id, course_name, credit_hours, program_id, teacher_id, course_code, semester) VALUES (courses_seq.NEXTVAL, 'Thermodynamics', 4, 534, 1024, 'CHEM102', 'Spring 2026');

-- Dept 155 (BA English Literature) - program 536, teachers 1027, 1030
INSERT INTO COURSES (course_id, course_name, credit_hours, program_id, teacher_id, course_code, semester) VALUES (courses_seq.NEXTVAL, 'British Literature', 3, 536, 1027, 'ENG101', 'Fall 2025');
INSERT INTO COURSES (course_id, course_name, credit_hours, program_id, teacher_id, course_code, semester) VALUES (courses_seq.NEXTVAL, 'Structural Analysis', 3, 536, 1030, 'ENG102', 'Spring 2026');

-- Dept 160 (BS/MS Economics) - program 538/540, teachers 1033, 1036
INSERT INTO COURSES (course_id, course_name, credit_hours, program_id, teacher_id, course_code, semester) VALUES (courses_seq.NEXTVAL, 'Microeconomics', 3, 538, 1033, 'ECO101', 'Fall 2025');
INSERT INTO COURSES (course_id, course_name, credit_hours, program_id, teacher_id, course_code, semester) VALUES (courses_seq.NEXTVAL, 'Macroeconomics', 3, 540, 1036, 'ECO201', 'Spring 2026');

-- Dept 165 (BS Biotechnology) - program 542, teachers 1039, 1042
INSERT INTO COURSES (course_id, course_name, credit_hours, program_id, teacher_id, course_code, semester) VALUES (courses_seq.NEXTVAL, 'Genetics', 3, 542, 1039, 'BIOT101', 'Fall 2025');
INSERT INTO COURSES (course_id, course_name, credit_hours, program_id, teacher_id, course_code, semester) VALUES (courses_seq.NEXTVAL, 'Fluid Mechanics', 3, 542, 1042, 'BIOT102', 'Spring 2026');

-- Dept 170 (B.Arch Architecture) - program 544, teachers 1045, 1048
INSERT INTO COURSES (course_id, course_name, credit_hours, program_id, teacher_id, course_code, semester) VALUES (courses_seq.NEXTVAL, 'Architectural Design Studio I', 4, 544, 1045, 'ARCH101', 'Fall 2025');
INSERT INTO COURSES (course_id, course_name, credit_hours, program_id, teacher_id, course_code, semester) VALUES (courses_seq.NEXTVAL, 'Surveying', 3, 544, 1048, 'ARCH102', 'Spring 2026');

-- Dept 175 (BS/MS Artificial Intelligence) - program 546/548, teacher 1051
INSERT INTO COURSES (course_id, course_name, credit_hours, program_id, teacher_id, course_code, semester) VALUES (courses_seq.NEXTVAL, 'Machine Learning', 3, 546, 1051, 'AI101', 'Fall 2025');
INSERT INTO COURSES (course_id, course_name, credit_hours, program_id, teacher_id, course_code, semester) VALUES (courses_seq.NEXTVAL, 'Deep Learning', 3, 548, 1051, 'AI201', 'Spring 2026');

-- Dept 180 (BS/MS Data Science) - program 550/552, teacher 1054
INSERT INTO COURSES (course_id, course_name, credit_hours, program_id, teacher_id, course_code, semester) VALUES (courses_seq.NEXTVAL, 'Big Data Analytics', 3, 550, 1054, 'DS101', 'Fall 2025');
INSERT INTO COURSES (course_id, course_name, credit_hours, program_id, teacher_id, course_code, semester) VALUES (courses_seq.NEXTVAL, 'Database Systems', 3, 552, 1054, 'DS201', 'Spring 2026');

-- Dept 185 (BS/MS Telecom Engineering) - program 554/556, teachers 1057, 1060
INSERT INTO COURSES (course_id, course_name, credit_hours, program_id, teacher_id, course_code, semester) VALUES (courses_seq.NEXTVAL, 'Circuit Analysis', 4, 554, 1057, 'TE101', 'Fall 2025');
INSERT INTO COURSES (course_id, course_name, credit_hours, program_id, teacher_id, course_code, semester) VALUES (courses_seq.NEXTVAL, 'Digital Logic Design', 3, 556, 1060, 'TE201', 'Spring 2026');

-- Dept 195 (BS Environmental Science) - program 558, teacher 1063
INSERT INTO COURSES (course_id, course_name, credit_hours, program_id, teacher_id, course_code, semester) VALUES (courses_seq.NEXTVAL, 'Operating Systems', 3, 558, 1063, 'ENV101', 'Fall 2025');

-- Dept 200 (BS/MS Psychology) - program 560/562, teacher 1066
INSERT INTO COURSES (course_id, course_name, credit_hours, program_id, teacher_id, course_code, semester) VALUES (courses_seq.NEXTVAL, 'Software Requirements Engineering', 3, 560, 1066, 'PSY101', 'Fall 2025');
INSERT INTO COURSES (course_id, course_name, credit_hours, program_id, teacher_id, course_code, semester) VALUES (courses_seq.NEXTVAL, 'Software Project Management', 3, 562, 1066, 'PSY201', 'Spring 2026');

-- Dept 205 (BS/MS/PhD Computer Science) - program 514/516/518, teacher 1069
INSERT INTO COURSES (course_id, course_name, credit_hours, program_id, teacher_id, course_code, semester) VALUES (courses_seq.NEXTVAL, 'Programming Fundamentals', 3, 514, 1069, 'CS101', 'Fall 2025');
INSERT INTO COURSES (course_id, course_name, credit_hours, program_id, teacher_id, course_code, semester) VALUES (courses_seq.NEXTVAL, 'Object Oriented Programming', 3, 514, 1069, 'CS102', 'Spring 2026');
INSERT INTO COURSES (course_id, course_name, credit_hours, program_id, teacher_id, course_code, semester) VALUES (courses_seq.NEXTVAL, 'Data Structures and Algorithms', 4, 516, 1069, 'CS201', 'Fall 2025');
INSERT INTO COURSES (course_id, course_name, credit_hours, program_id, teacher_id, course_code, semester) VALUES (courses_seq.NEXTVAL, 'Software Design and Architecture', 3, 518, 1069, 'CS301', 'Spring 2026');

-- Dept 210 (BS/MS Software Engineering) - program 520/522, teacher 1072
INSERT INTO COURSES (course_id, course_name, credit_hours, program_id, teacher_id, course_code, semester) VALUES (courses_seq.NEXTVAL, 'Software Requirements Analysis', 3, 520, 1072, 'SE101', 'Fall 2025');
INSERT INTO COURSES (course_id, course_name, credit_hours, program_id, teacher_id, course_code, semester) VALUES (courses_seq.NEXTVAL, 'Software Testing and QA', 3, 522, 1072, 'SE201', 'Spring 2026');


COMMIT;

-----------------------------------------------------------------------------------
-- 5. STUDENTS (36 rows)
-- program_id references 1-25 from PROGRAMS insert order above
------------------------------------------------------------------------------------
INSERT INTO STUDENTS (student_id, program_id, first_name, last_name, email, phone, cnic, date_of_birth, gender, admission_date, current_semester, status) VALUES (STUDENTS_SEQ.NEXTVAL, 514, 'Areeba', 'Saleem', 'areeba.saleem@student.edu', NULL, NULL, DATE '2002-08-22', 'Female', DATE '2020-09-01', 12, 'Active');
INSERT INTO STUDENTS (student_id,program_id,first_name,last_name,email,phone,cnic,date_of_birth,gender,admission_date,current_semester,status) VALUES(STUDENTS_SEQ.NEXTVAL,514,'Talha','Nawaz','talha.nawaz@student.edu','0333-9077611','Null',DATE '2001-12-03','Male',DATE '2020-09-01',8,'Active'); 
INSERT INTO STUDENTS (student_id, program_id, first_name, last_name, email, phone, cnic, date_of_birth, gender, admission_date, current_semester, status) VALUES (STUDENTS_SEQ.NEXTVAL, 514, 'Mehak', 'Fatima', 'mehak.fatima@student.edu', NULL, NULL, DATE '2003-01-19', 'Female', DATE '2021-09-01', 10, 'Active');
INSERT INTO STUDENTS (student_id, program_id, first_name, last_name, email, phone, cnic, date_of_birth, gender, admission_date, current_semester, status) VALUES (STUDENTS_SEQ.NEXTVAL, 514, 'Daniyal', 'Ahsan', 'daniyal.ahsan@student.edu', NULL, NULL, DATE '2002-03-11', 'Male', DATE '2021-09-01', 10, 'Active');
INSERT INTO STUDENTS (student_id, program_id, first_name, last_name, email, phone, cnic, date_of_birth, gender, admission_date, current_semester, status) VALUES (STUDENTS_SEQ.NEXTVAL, 516, 'Komal', 'Yasir', 'komal.yasir@student.edu', NULL, NULL, DATE '2000-07-28', 'Female', DATE '2019-09-01', 14, 'Active');
INSERT INTO STUDENTS (student_id, program_id, first_name, last_name, email, phone, cnic, date_of_birth, gender, admission_date, current_semester, status) VALUES (STUDENTS_SEQ.NEXTVAL, 516, 'Saad', 'Qureshi', 'saad.qureshi@student.edu', NULL, NULL, DATE '2000-02-09', 'Male', DATE '2019-09-01', 14, 'Active');
INSERT INTO STUDENTS (student_id, program_id, first_name, last_name, email, phone, cnic, date_of_birth, gender, admission_date, current_semester, status) VALUES (STUDENTS_SEQ.NEXTVAL, 520, 'Anum', 'Bashir', 'anum.bashir@student.edu', NULL, NULL, DATE '2001-06-17', 'Female', DATE '2022-09-01', 8, 'Active');
INSERT INTO STUDENTS (student_id, program_id, first_name, last_name, email, phone, cnic, date_of_birth, gender, admission_date, current_semester, status) VALUES (STUDENTS_SEQ.NEXTVAL, 520, 'Zeeshan', 'Khalil', 'zeeshan.khalil@student.edu', NULL, NULL, DATE '2002-09-30', 'Male', DATE '2022-09-01', 8, 'Active');
INSERT INTO STUDENTS (student_id, program_id, first_name, last_name, email, phone, cnic, date_of_birth, gender, admission_date, current_semester, status) VALUES (STUDENTS_SEQ.NEXTVAL, 520, 'Sehrish', 'Anjum', 'sehrish.anjum@student.edu', NULL, NULL, DATE '2002-11-05', 'Female', DATE '2022-09-01', 8, 'Active');
INSERT INTO STUDENTS (student_id, program_id, first_name, last_name, email, phone, cnic, date_of_birth, gender, admission_date, current_semester, status) VALUES (STUDENTS_SEQ.NEXTVAL, 524, 'Noman', 'Sajid', 'noman.sajid@student.edu', NULL, NULL, DATE '2001-04-23', 'Male', DATE '2020-09-01', 12, 'Active');
INSERT INTO STUDENTS (student_id, program_id, first_name, last_name, email, phone, cnic, date_of_birth, gender, admission_date, current_semester, status) VALUES (STUDENTS_SEQ.NEXTVAL, 524, 'Iqra', 'Naveed', 'iqra.naveed@student.edu', NULL, NULL, DATE '2002-10-12', 'Female', DATE '2020-09-01', 12, 'Active');
INSERT INTO STUDENTS (student_id, program_id, first_name, last_name, email, phone, cnic, date_of_birth, gender, admission_date, current_semester, status) VALUES (STUDENTS_SEQ.NEXTVAL, 524, 'Bilal', 'Shahzad', 'bilal.shahzad@student.edu', NULL, NULL, DATE '2001-01-08', 'Male', DATE '2021-09-01', 10, 'Active');
INSERT INTO STUDENTS (student_id, program_id, first_name, last_name, email, phone, cnic, date_of_birth, gender, admission_date, current_semester, status) VALUES (STUDENTS_SEQ.NEXTVAL, 528, 'Hira', 'Sultan', 'hira.sultan@student.edu', NULL, NULL, DATE '2003-03-25', 'Female', DATE '2021-09-01', 10, 'Active');
INSERT INTO STUDENTS (student_id, program_id, first_name, last_name, email, phone, cnic, date_of_birth, gender, admission_date, current_semester, status) VALUES (STUDENTS_SEQ.NEXTVAL, 528, 'Awais', 'Ghani', 'awais.ghani@student.edu', NULL, NULL, DATE '2002-07-02', 'Male', DATE '2021-09-01', 10, 'Active');
INSERT INTO STUDENTS (student_id, program_id, first_name, last_name, email, phone, cnic, date_of_birth, gender, admission_date, current_semester, status) VALUES (STUDENTS_SEQ.NEXTVAL, 530, 'Laiba', 'Hameed', 'laiba.hameed@student.edu', NULL, NULL, DATE '2001-09-14', 'Female', DATE '2020-09-01', 12, 'Active');
INSERT INTO STUDENTS (student_id, program_id, first_name, last_name, email, phone, cnic, date_of_birth, gender, admission_date, current_semester, status) VALUES (STUDENTS_SEQ.NEXTVAL, 530, 'Asad', 'Rafiq', 'asad.rafiq@student.edu', NULL, NULL, DATE '2001-12-29', 'Male', DATE '2020-09-01', 12, 'Active');
INSERT INTO STUDENTS (student_id, program_id, first_name, last_name, email, phone, cnic, date_of_birth, gender, admission_date, current_semester, status) VALUES (STUDENTS_SEQ.NEXTVAL, 532, 'Mariam', 'Idrees', 'mariam.idrees@student.edu', NULL, NULL, DATE '2002-02-17', 'Female', DATE '2022-09-01', 8, 'Active');
INSERT INTO STUDENTS (student_id, program_id, first_name, last_name, email, phone, cnic, date_of_birth, gender, admission_date, current_semester, status) VALUES (STUDENTS_SEQ.NEXTVAL, 532, 'Fahad', 'Mansoor', 'fahad.mansoor@student.edu', NULL, NULL, DATE '2002-06-06', 'Male', DATE '2022-09-01', 8, 'Active');
INSERT INTO STUDENTS (student_id, program_id, first_name, last_name, email, phone, cnic, date_of_birth, gender, admission_date, current_semester, status) VALUES (STUDENTS_SEQ.NEXTVAL, 536, 'Rida', 'Zafar', 'rida.zafar@student.edu', NULL, NULL, DATE '2003-04-09', 'Female', DATE '2022-09-01', 8, 'Active');
INSERT INTO STUDENTS (student_id, program_id, first_name, last_name, email, phone, cnic, date_of_birth, gender, admission_date, current_semester, status) VALUES (STUDENTS_SEQ.NEXTVAL, 536, 'Hamid', 'Nawab', 'hamid.nawab@student.edu', NULL, NULL, DATE '2001-08-21', 'Male', DATE '2019-09-01', 9, 'Active');
INSERT INTO STUDENTS (student_id, program_id, first_name, last_name, email, phone, cnic, date_of_birth, gender, admission_date, current_semester, status) VALUES (STUDENTS_SEQ.NEXTVAL, 540, 'Sidra', 'Rauf', 'sidra.rauf@student.edu', NULL, NULL, DATE '2002-01-15', 'Female', DATE '2020-09-01', 12, 'Active');
INSERT INTO STUDENTS (student_id, program_id, first_name, last_name, email, phone, cnic, date_of_birth, gender, admission_date, current_semester, status) VALUES (STUDENTS_SEQ.NEXTVAL, 540, 'Abdullah', 'Sarwar', 'abdullah.sarwar@student.edu', NULL, NULL, DATE '2002-05-27', 'Male', DATE '2020-09-01', 12, 'Active');
INSERT INTO STUDENTS (student_id, program_id, first_name, last_name, email, phone, cnic, date_of_birth, gender, admission_date, current_semester, status) VALUES (STUDENTS_SEQ.NEXTVAL, 544, 'Kiran', 'Aftab', 'kiran.aftab@student.edu', NULL, NULL, DATE '2001-10-04', 'Female', DATE '2021-09-01', 10, 'Active');
INSERT INTO STUDENTS (student_id, program_id, first_name, last_name, email, phone, cnic, date_of_birth, gender, admission_date, current_semester, status) VALUES (STUDENTS_SEQ.NEXTVAL, 544, 'Salman', 'Tahir', 'salman.tahir@student.edu', NULL, NULL, DATE '2002-12-19', 'Male', DATE '2021-09-01', 10, 'Active');
INSERT INTO STUDENTS (student_id, program_id, first_name, last_name, email, phone, cnic, date_of_birth, gender, admission_date, current_semester, status) VALUES (STUDENTS_SEQ.NEXTVAL, 546, 'Wajiha', 'Pasha', 'wajiha.pasha@student.edu', NULL, NULL, DATE '2003-02-08', 'Female', DATE '2022-09-01', 8, 'Active');
INSERT INTO STUDENTS (student_id, program_id, first_name, last_name, email, phone, cnic, date_of_birth, gender, admission_date, current_semester, status) VALUES (STUDENTS_SEQ.NEXTVAL, 546, 'Ibrahim', 'Ansari', 'ibrahim.ansari@student.edu', NULL, NULL, DATE '2001-07-13', 'Male', DATE '2022-09-01', 8, 'Active');
INSERT INTO STUDENTS (student_id, program_id, first_name, last_name, email, phone, cnic, date_of_birth, gender, admission_date, current_semester, status) VALUES (STUDENTS_SEQ.NEXTVAL, 550, 'Hafsa', 'Tanveer', 'hafsa.tanveer@student.edu', NULL, NULL, DATE '2002-09-26', 'Female', DATE '2020-09-01', 12, 'Active');
INSERT INTO STUDENTS (student_id, program_id, first_name, last_name, email, phone, cnic, date_of_birth, gender, admission_date, current_semester, status) VALUES (STUDENTS_SEQ.NEXTVAL, 552, 'Umer', 'Farooqi', 'umer.farooqi@student.edu', NULL, NULL, DATE '2002-04-02', 'Male', DATE '2020-09-01', 12, 'Active');
INSERT INTO STUDENTS (student_id, program_id, first_name, last_name, email, phone, cnic, date_of_birth, gender, admission_date, current_semester, status) VALUES (STUDENTS_SEQ.NEXTVAL, 554, 'Maham', 'Zaidi', 'maham.zaidi@student.edu', NULL, NULL, DATE '2003-06-30', 'Female', DATE '2021-09-01', 10, 'Active');
INSERT INTO STUDENTS (student_id, program_id, first_name, last_name, email, phone, cnic, date_of_birth, gender, admission_date, current_semester, status) VALUES (STUDENTS_SEQ.NEXTVAL, 556, 'Yasir', 'Bhatti', 'yasir.bhatti@student.edu', NULL, NULL, DATE '2001-11-23', 'Male', DATE '2021-09-01', 10, 'Active');
INSERT INTO STUDENTS (student_id, program_id, first_name, last_name, email, phone, cnic, date_of_birth, gender, admission_date, current_semester, status) VALUES (STUDENTS_SEQ.NEXTVAL, 558, 'Anosha', 'Waheed', 'anosha.waheed@student.edu', NULL, NULL, DATE '2002-08-17', 'Female', DATE '2022-09-01', 8, 'Active');
INSERT INTO STUDENTS (student_id, program_id, first_name, last_name, email, phone, cnic, date_of_birth, gender, admission_date, current_semester, status) VALUES (STUDENTS_SEQ.NEXTVAL, 558, 'Taimoor', 'Aziz', 'taimoor.aziz@student.edu', NULL, NULL, DATE '2002-03-05', 'Male', DATE '2022-09-01', 8, 'Active');
INSERT INTO STUDENTS (student_id, program_id, first_name, last_name, email, phone, cnic, date_of_birth, gender, admission_date, current_semester, status) VALUES (STUDENTS_SEQ.NEXTVAL, 514, 'Eman', 'Rasheed', 'eman.rasheed@student.edu', NULL, NULL, DATE '2001-05-09', 'Female', DATE '2019-09-01', 12, 'Active');
INSERT INTO STUDENTS (student_id, program_id, first_name, last_name, email, phone, cnic, date_of_birth, gender, admission_date, current_semester, status) VALUES (STUDENTS_SEQ.NEXTVAL, 516, 'Haris', 'Junejo', 'haris.junejo@student.edu', NULL, NULL, DATE '2000-10-31', 'Male', DATE '2019-09-01', 11, 'Active');
INSERT INTO STUDENTS (student_id, program_id, first_name, last_name, email, phone, cnic, date_of_birth, gender, admission_date, current_semester, status) VALUES (STUDENTS_SEQ.NEXTVAL, 520, 'Nimra', 'Shoukat', 'nimra.shoukat@student.edu', NULL, NULL, DATE '2002-02-28', 'Female', DATE '2020-09-01', 12, 'Active');
INSERT INTO STUDENTS (student_id, program_id, first_name, last_name, email, phone, cnic, date_of_birth, gender, admission_date, current_semester, status) VALUES (STUDENTS_SEQ.NEXTVAL, 524, 'Shayan', 'Qadir', 'shayan.qadir@student.edu', NULL, NULL, DATE '2001-09-19', 'Male', DATE '2021-09-01', 10, 'Active');
INSERT INTO STUDENTS (student_id, program_id, first_name, last_name, email, phone, cnic, date_of_birth, gender, admission_date, current_semester, status) VALUES (STUDENTS_SEQ.NEXTVAL, 530, 'Mishal', 'Rauf', 'mishal.rauf@student.edu', NULL, NULL, DATE '2002-12-12', 'Female', DATE '2022-09-01', 8, 'Active');
INSERT INTO STUDENTS (student_id, program_id, first_name, last_name, email, phone, cnic, date_of_birth, gender, admission_date, current_semester, status) VALUES (STUDENTS_SEQ.NEXTVAL, 540, 'Burhan', 'Liaqat', 'burhan.liaqat@student.edu', NULL, NULL, DATE '2001-06-26', 'Male', DATE '2020-09-01', 12, 'Active');

COMMIT;
---------------------------------------------------------------------------------------------
-- 6. ENROLLMENTS (41 Rows)
-- student_id references 1-40, course_id references 1-30
--------------------------------------------------------------------------------------------
INSERT INTO ENROLLMENTS (enrollment_id, student_id, course_id, enrollment_date, enrollment_status) VALUES (enrollments_seq.NEXTVAL,1,1,DATE '2020-09-05', 'Enrolled');
INSERT INTO ENROLLMENTS (enrollment_id,student_id,course_id,enrollment_date,enrollment_status) VALUES (enrollments_seq.NEXTVAL,1,5,DATE '2021-01-10','Enrolled');
INSERT INTO ENROLLMENTS (enrollment_id, student_id, course_id, enrollment_date, enrollment_status) VALUES (enrollments_seq.NEXTVAL, 1, 9, DATE '2021-09-05', 'Completed');             
INSERT INTO ENROLLMENTS (enrollment_id, student_id, course_id, enrollment_date, enrollment_status) VALUES (enrollments_seq.NEXTVAL, 4, 1, DATE '2020-09-05', 'Completed');
INSERT INTO ENROLLMENTS (enrollment_id, student_id, course_id, enrollment_date, enrollment_status) VALUES (enrollments_seq.NEXTVAL, 4, 13, DATE '2021-09-05', 'Enrolled');
INSERT INTO ENROLLMENTS (enrollment_id, student_id, course_id, enrollment_date, enrollment_status) VALUES (enrollments_seq.NEXTVAL, 10, 5, DATE '2021-01-10', 'Enrolled');
INSERT INTO ENROLLMENTS (enrollment_id, student_id, course_id, enrollment_date, enrollment_status) VALUES (enrollments_seq.NEXTVAL, 10, 17, DATE '2022-01-10', 'Dropped');
INSERT INTO ENROLLMENTS (enrollment_id, student_id, course_id, enrollment_date, enrollment_status) VALUES(enrollments_seq.NEXTVAL, 13, 1, DATE '2021-09-05', 'Enrolled');
INSERT INTO ENROLLMENTS (enrollment_id, student_id, course_id, enrollment_date, enrollment_status) VALUES (enrollments_seq.NEXTVAL, 22, 9, DATE '2022-09-05', 'Completed');
INSERT INTO ENROLLMENTS (enrollment_id, student_id, course_id, enrollment_date, enrollment_status) VALUES (enrollments_seq.NEXTVAL, 25, 13, DATE '2020-01-10', 'Enrolled');
INSERT INTO ENROLLMENTS (enrollment_id, student_id, course_id, enrollment_date, enrollment_status) VALUES (enrollments_seq.NEXTVAL, 28, 17, DATE '2020-01-10',  'Dropped');
INSERT INTO ENROLLMENTS (enrollment_id, student_id, course_id, enrollment_date, enrollment_status) VALUES (enrollments_seq.NEXTVAL, 31, 25, DATE '2022-09-05', 'Enrolled');
INSERT INTO ENROLLMENTS (enrollment_id, student_id, course_id, enrollment_date, enrollment_status) VALUES (enrollments_seq.NEXTVAL, 31, 29, DATE '2023-01-10', 'Completed');
INSERT INTO ENROLLMENTS (enrollment_id, student_id, course_id, enrollment_date, enrollment_status) VALUES (enrollments_seq.NEXTVAL, 34, 25, DATE '2022-09-05', 'Completed');
INSERT INTO ENROLLMENTS (enrollment_id, student_id, course_id, enrollment_date, enrollment_status) VALUES (enrollments_seq.NEXTVAL, 37, 37, DATE '2023-01-10', 'Enrolled');
INSERT INTO ENROLLMENTS (enrollment_id, student_id, course_id, enrollment_date, enrollment_status) VALUES (enrollments_seq.NEXTVAL, 40, 57, DATE '2020-09-05', 'Dropped');
INSERT INTO ENROLLMENTS (enrollment_id, student_id, course_id, enrollment_date, enrollment_status) VALUES (enrollments_seq.NEXTVAL, 43, 61, DATE '2020-09-05', 'Enrolled');
INSERT INTO ENROLLMENTS (enrollment_id, student_id, course_id, enrollment_date, enrollment_status) VALUES (enrollments_seq.NEXTVAL, 46, 65, DATE '2021-09-05', 'Dropped');
INSERT INTO ENROLLMENTS (enrollment_id, student_id, course_id, enrollment_date, enrollment_status) VALUES (enrollments_seq.NEXTVAL, 49, 69, DATE '2021-09-05', 'Enrolled');
INSERT INTO ENROLLMENTS (enrollment_id, student_id, course_id, enrollment_date, enrollment_status) VALUES (enrollments_seq.NEXTVAL, 52, 69, DATE '2021-09-05', 'Enrolled');
INSERT INTO ENROLLMENTS (enrollment_id, student_id, course_id, enrollment_date, enrollment_status) VALUES (enrollments_seq.NEXTVAL, 55, 73, DATE '2020-09-05', 'Completed');
INSERT INTO ENROLLMENTS (enrollment_id, student_id, course_id, enrollment_date, enrollment_status) VALUES (enrollments_seq.NEXTVAL, 58, 73, DATE '2020-09-05', 'Enrolled');
INSERT INTO ENROLLMENTS (enrollment_id, student_id, course_id, enrollment_date, enrollment_status) VALUES (enrollments_seq.NEXTVAL, 67, 77, DATE '2022-09-05','Completed');
INSERT INTO ENROLLMENTS (enrollment_id, student_id, course_id, enrollment_date, enrollment_status) VALUES (enrollments_seq.NEXTVAL, 70, 77, DATE '2022-09-05', 'Enrolled');
INSERT INTO ENROLLMENTS (enrollment_id, student_id, course_id, enrollment_date, enrollment_status) VALUES (enrollments_seq.NEXTVAL, 73, 89, DATE '2022-09-05',  'Dropped');
INSERT INTO ENROLLMENTS (enrollment_id, student_id, course_id, enrollment_date, enrollment_status) VALUES (enrollments_seq.NEXTVAL, 76, 93, DATE '2022-09-05', 'Enrolled');
INSERT INTO ENROLLMENTS (enrollment_id, student_id, course_id, enrollment_date, enrollment_status) VALUES (enrollments_seq.NEXTVAL, 79, 93, DATE '2019-09-05',  'Dropped');
INSERT INTO ENROLLMENTS (enrollment_id, student_id, course_id, enrollment_date, enrollment_status) VALUES (enrollments_seq.NEXTVAL, 82, 97, DATE '2020-09-05', 'Enrolled');
INSERT INTO ENROLLMENTS (enrollment_id, student_id, course_id, enrollment_date, enrollment_status) VALUES (enrollments_seq.NEXTVAL, 85, 97, DATE '2020-09-05', 'Completed');
INSERT INTO ENROLLMENTS (enrollment_id, student_id, course_id, enrollment_date, enrollment_status) VALUES (enrollments_seq.NEXTVAL, 88, 105, DATE '2021-09-05', 'Completed');
INSERT INTO ENROLLMENTS (enrollment_id, student_id, course_id, enrollment_date, enrollment_status) VALUES (enrollments_seq.NEXTVAL, 91, 105, DATE '2021-09-05', 'Enrolled');
INSERT INTO ENROLLMENTS (enrollment_id, student_id, course_id, enrollment_date, enrollment_status) VALUES (enrollments_seq.NEXTVAL, 94, 65, DATE '2022-09-05', 'Enrolled');
INSERT INTO ENROLLMENTS (enrollment_id, student_id, course_id, enrollment_date, enrollment_status) VALUES (enrollments_seq.NEXTVAL, 97, 69, DATE '2022-09-05', 'Completed');
INSERT INTO ENROLLMENTS (enrollment_id, student_id, course_id, enrollment_date, enrollment_status) VALUES (enrollments_seq.NEXTVAL, 100, 73, DATE '2020-09-05', 'Enrolled');
INSERT INTO ENROLLMENTS (enrollment_id, student_id, course_id, enrollment_date, enrollment_status) VALUES (enrollments_seq.NEXTVAL, 103, 77, DATE '2020-09-05', 'Dropped');
INSERT INTO ENROLLMENTS (enrollment_id, student_id, course_id, enrollment_date, enrollment_status) VALUES (enrollments_seq.NEXTVAL, 109, 81, DATE '2021-09-05', 'Enrolled');
INSERT INTO ENROLLMENTS (enrollment_id, student_id, course_id, enrollment_date, enrollment_status) VALUES (enrollments_seq.NEXTVAL, 115, 85, DATE '2021-09-05', 'Enrolled');
INSERT INTO ENROLLMENTS (enrollment_id, student_id, course_id, enrollment_date, enrollment_status) VALUES (enrollments_seq.NEXTVAL, 118, 85, DATE '2022-09-05', 'Enrolled');
INSERT INTO ENROLLMENTS (enrollment_id, student_id, course_id, enrollment_date, enrollment_status) VALUES (enrollments_seq.NEXTVAL, 121, 85, DATE '2022-09-05', 'Dropped');
INSERT INTO ENROLLMENTS (enrollment_id, student_id, course_id, enrollment_date, enrollment_status) VALUES (enrollments_seq.NEXTVAL, 124, 1, DATE '2019-09-05', 'Enrolled');
INSERT INTO ENROLLMENTS (enrollment_id, student_id, course_id, enrollment_date, enrollment_status) VALUES (enrollments_seq.NEXTVAL, 127, 9, DATE '2019-09-05', 'Completed');

COMMIT;
---------------------------------------------------------------------------------------------------------------------------------
-- 7. GRADES (45 rows)
-- enrollment_id references 1-45 (1:1 mapping to ENROLLMENTS above)
----------------------------------------------------------------------------------------------------------------------------------
INSERT INTO GRADES (grade_id, enrollment_id, marks_obtained, grade_letter, grade_points, remarks, graded_on) VALUES (grades_seq.NEXTVAL, 1, 88, 'A', 4.00, NULL, DATE '2021-01-15');
INSERT INTO GRADES (grade_id, enrollment_id, marks_obtained, grade_letter, grade_points, remarks, graded_on) VALUES (grades_seq.NEXTVAL, 2, 76, 'B+', 3.30, NULL, DATE '2021-05-15');
INSERT INTO GRADES (grade_id, enrollment_id, marks_obtained, grade_letter, grade_points, remarks, graded_on) VALUES (grades_seq.NEXTVAL, 3, 91, 'A', 4.00, NULL, DATE '2022-01-15');
INSERT INTO GRADES (grade_id, enrollment_id, marks_obtained, grade_letter, grade_points, remarks, graded_on) VALUES (grades_seq.NEXTVAL, 4, 65, 'C+', 2.30, NULL, DATE '2021-01-15');
INSERT INTO GRADES (grade_id, enrollment_id, marks_obtained, grade_letter, grade_points, remarks, graded_on) VALUES (grades_seq.NEXTVAL, 5, 82, 'A-', 3.70, NULL, DATE '2022-01-15');
INSERT INTO GRADES (grade_id, enrollment_id, marks_obtained, grade_letter, grade_points, remarks, graded_on) VALUES (grades_seq.NEXTVAL, 6, 70, 'B', 3.00, NULL, DATE '2022-05-15');
INSERT INTO GRADES (grade_id, enrollment_id, marks_obtained, grade_letter, grade_points, remarks, graded_on) VALUES (grades_seq.NEXTVAL, 7, 95, 'A+', 4.00, NULL, DATE '2021-01-15');
INSERT INTO GRADES (grade_id, enrollment_id, marks_obtained, grade_letter, grade_points, remarks, graded_on) VALUES (grades_seq.NEXTVAL, 9, 58, 'C', 2.00, NULL, DATE '2023-01-15');
INSERT INTO GRADES (grade_id, enrollment_id, marks_obtained, grade_letter, grade_points, remarks, graded_on) VALUES (grades_seq.NEXTVAL, 10, 73, 'B', 3.00, NULL, DATE '2023-05-15');
INSERT INTO GRADES (grade_id, enrollment_id, marks_obtained, grade_letter, grade_points, remarks, graded_on) VALUES (grades_seq.NEXTVAL, 12, 84, 'A-', 3.70, NULL, DATE '2020-01-15');
INSERT INTO GRADES (grade_id, enrollment_id, marks_obtained, grade_letter, grade_points, remarks, graded_on) VALUES (grades_seq.NEXTVAL, 13, 67, 'C+', 2.30, NULL, DATE '2020-05-15');
INSERT INTO GRADES (grade_id, enrollment_id, marks_obtained, grade_letter, grade_points, remarks, graded_on) VALUES (grades_seq.NEXTVAL, 14, 90, 'A', 4.00, NULL, DATE '2021-01-15');
INSERT INTO GRADES (grade_id, enrollment_id, marks_obtained, grade_letter, grade_points, remarks, graded_on) VALUES (grades_seq.NEXTVAL, 15, 79, 'B+', 3.30, NULL, DATE '2021-05-15');
INSERT INTO GRADES (grade_id, enrollment_id, marks_obtained, grade_letter, grade_points, remarks, graded_on) VALUES (grades_seq.NEXTVAL, 16, 60, 'C', 2.00, NULL, DATE '2022-01-15');
INSERT INTO GRADES (grade_id, enrollment_id, marks_obtained, grade_letter, grade_points, remarks, graded_on) VALUES (grades_seq.NEXTVAL, 17, 87, 'A', 4.00, NULL, DATE '2022-05-15');
INSERT INTO GRADES (grade_id, enrollment_id, marks_obtained, grade_letter, grade_points, remarks, graded_on) VALUES (grades_seq.NEXTVAL, 18, 71, 'B', 3.00, NULL, DATE '2020-01-15');
INSERT INTO GRADES (grade_id, enrollment_id, marks_obtained, grade_letter, grade_points, remarks, graded_on) VALUES (grades_seq.NEXTVAL, 19, 93, 'A+', 4.00, NULL, DATE '2020-05-15');
INSERT INTO GRADES (grade_id, enrollment_id, marks_obtained, grade_letter, grade_points, remarks, graded_on) VALUES (grades_seq.NEXTVAL, 20, 55, 'D', 1.30, NULL, DATE '2021-01-15');
INSERT INTO GRADES (grade_id, enrollment_id, marks_obtained, grade_letter, grade_points, remarks, graded_on) VALUES (grades_seq.NEXTVAL, 21, 80, 'A-', 3.70, NULL, DATE '2021-05-15');
INSERT INTO GRADES (grade_id, enrollment_id, marks_obtained, grade_letter, grade_points, remarks, graded_on) VALUES (grades_seq.NEXTVAL, 22, 68, 'C+', 2.30, NULL, DATE '2022-01-15');
INSERT INTO GRADES (grade_id, enrollment_id, marks_obtained, grade_letter, grade_points, remarks, graded_on) VALUES (grades_seq.NEXTVAL, 23, 92, 'A', 4.00, NULL, DATE '2022-05-15');
INSERT INTO GRADES (grade_id, enrollment_id, marks_obtained, grade_letter, grade_points, remarks, graded_on) VALUES (grades_seq.NEXTVAL, 24, 77, 'B+', 3.30, NULL, DATE '2022-05-15');
INSERT INTO GRADES (grade_id, enrollment_id, marks_obtained, grade_letter, grade_points, remarks, graded_on) VALUES (grades_seq.NEXTVAL, 25, 63, 'C', 2.00, NULL, DATE '2020-05-15');
INSERT INTO GRADES (grade_id, enrollment_id, marks_obtained, grade_letter, grade_points, remarks, graded_on) VALUES (grades_seq.NEXTVAL, 26, 89, 'A', 4.00, NULL, DATE '2020-01-15');
INSERT INTO GRADES (grade_id, enrollment_id, marks_obtained, grade_letter, grade_points, remarks, graded_on) VALUES (grades_seq.NEXTVAL, 27, 74, 'B', 3.00, NULL, DATE '2023-01-15');
INSERT INTO GRADES (grade_id, enrollment_id, marks_obtained, grade_letter, grade_points, remarks, graded_on) VALUES (grades_seq.NEXTVAL, 28, 96, 'A+', 4.00, NULL, DATE '2021-01-15');
INSERT INTO GRADES (grade_id, enrollment_id, marks_obtained, grade_letter, grade_points, remarks, graded_on) VALUES (grades_seq.NEXTVAL, 29, 59, 'C', 2.00, NULL, DATE '2021-05-15');
INSERT INTO GRADES (grade_id, enrollment_id, marks_obtained, grade_letter, grade_points, remarks, graded_on) VALUES (grades_seq.NEXTVAL, 30, 85, 'A', 4.00, NULL, DATE '2022-01-15');
INSERT INTO GRADES (grade_id, enrollment_id, marks_obtained, grade_letter, grade_points, remarks, graded_on) VALUES (grades_seq.NEXTVAL, 31, 69, 'C+', 2.30, NULL, DATE '2023-05-15');
INSERT INTO GRADES (grade_id, enrollment_id, marks_obtained, grade_letter, grade_points, remarks, graded_on) VALUES (grades_seq.NEXTVAL, 32, 91, 'A', 4.00, NULL, DATE '2023-05-15');
INSERT INTO GRADES (grade_id, enrollment_id, marks_obtained, grade_letter, grade_points, remarks, graded_on) VALUES (grades_seq.NEXTVAL, 33, 78, 'B+', 3.30, NULL, DATE '2023-01-15');
INSERT INTO GRADES (grade_id, enrollment_id, marks_obtained, grade_letter, grade_points, remarks, graded_on) VALUES (grades_seq.NEXTVAL, 34, 62, 'C', 2.00, NULL, DATE '2020-01-15');
INSERT INTO GRADES (grade_id, enrollment_id, marks_obtained, grade_letter, grade_points, remarks, graded_on) VALUES (grades_seq.NEXTVAL, 35, 86, 'A', 4.00, NULL, DATE '2020-05-15');
INSERT INTO GRADES (grade_id, enrollment_id, marks_obtained, grade_letter, grade_points, remarks, graded_on) VALUES (grades_seq.NEXTVAL, 36, 72, 'B', 3.00, NULL, DATE '2021-01-15');
INSERT INTO GRADES (grade_id, enrollment_id, marks_obtained, grade_letter, grade_points, remarks, graded_on) VALUES (grades_seq.NEXTVAL, 37, 94, 'A+', 4.00, NULL, DATE '2021-05-15');
INSERT INTO GRADES (grade_id, enrollment_id, marks_obtained, grade_letter, grade_points, remarks, graded_on) VALUES (grades_seq.NEXTVAL, 38, 57, 'D+', 1.30, NULL, DATE '2022-01-15');
INSERT INTO GRADES (grade_id, enrollment_id, marks_obtained, grade_letter, grade_points, remarks, graded_on) VALUES (grades_seq.NEXTVAL, 39, 83, 'A', 3.70, NULL, DATE '2022-05-15');
INSERT INTO GRADES (grade_id, enrollment_id, marks_obtained, grade_letter, grade_points, remarks, graded_on) VALUES (grades_seq.NEXTVAL, 40, 75, 'B+', 3.30, NULL, DATE '2020-01-15');
INSERT INTO GRADES (grade_id, enrollment_id, marks_obtained, grade_letter, grade_points, remarks, graded_on) VALUES (grades_seq.NEXTVAL, 41, 64, 'C+', 2.30, NULL, DATE '2020-05-15');
INSERT INTO GRADES (grade_id, enrollment_id, marks_obtained, grade_letter, grade_points, remarks, graded_on) VALUES (grades_seq.NEXTVAL, 42, 97, 'A+', 4.00, NULL, DATE '2021-01-15');
INSERT INTO GRADES (grade_id, enrollment_id, marks_obtained, grade_letter, grade_points, remarks, graded_on) VALUES (grades_seq.NEXTVAL, 43, 66, 'C+', 2.30, NULL, DATE '2021-05-15');
INSERT INTO GRADES (grade_id, enrollment_id, marks_obtained, grade_letter, grade_points, remarks, graded_on) VALUES (grades_seq.NEXTVAL, 41, 81, 'A-', 3.70, NULL, DATE '2022-01-15');
INSERT INTO GRADES (grade_id, enrollment_id, marks_obtained, grade_letter, grade_points, remarks, graded_on) VALUES (grades_seq.NEXTVAL, 42, 56, 'D+', 1.30, NULL, DATE '2022-05-15');

COMMIT;

------------------------------------------------------------------------------------
-- 8. ATTENDANCE (50 rows)
-- student_id references 1-40, course_id references 1-30
-- linked directly to student/course, not through ENROLLMENTS
-------------------------------------------------------------------------------------
INSERT INTO ATTENDANCE (attendance_id, student_id, course_id, attendance_date, status, remarks) VALUES (attendance_seq.NEXTVAL, 1, 1, DATE '2024-02-01', 'Present', NULL);
INSERT INTO ATTENDANCE (attendance_id, student_id, course_id, attendance_date, status, remarks) VALUES (attendance_seq.NEXTVAL, 1, 5, DATE '2024-02-03', 'Present', NULL);
INSERT INTO ATTENDANCE (attendance_id, student_id, course_id, attendance_date, status, remarks) VALUES (attendance_seq.NEXTVAL, 1, 9, DATE '2024-02-01', 'Absent', NULL);
INSERT INTO ATTENDANCE (attendance_id, student_id, course_id, attendance_date, status, remarks) VALUES (attendance_seq.NEXTVAL, 4, 1, DATE '2024-02-01', 'Present', NULL);
INSERT INTO ATTENDANCE (attendance_id, student_id, course_id, attendance_date, status, remarks) VALUES (attendance_seq.NEXTVAL, 4, 13, DATE '2024-02-02', 'Present', NULL);
INSERT INTO ATTENDANCE (attendance_id, student_id, course_id, attendance_date, status, remarks) VALUES (attendance_seq.NEXTVAL, 10, 5, DATE '2024-02-01', 'Late', NULL);
INSERT INTO ATTENDANCE (attendance_id, student_id, course_id, attendance_date, status, remarks) VALUES (attendance_seq.NEXTVAL, 10, 17, DATE '2024-02-02', 'Present', NULL);
INSERT INTO ATTENDANCE (attendance_id, student_id, course_id, attendance_date, status, remarks) VALUES (attendance_seq.NEXTVAL, 13, 1, DATE '2024-02-01', 'Present', NULL);
INSERT INTO ATTENDANCE (attendance_id, student_id, course_id, attendance_date, status, remarks) VALUES (attendance_seq.NEXTVAL, 22, 9, DATE '2024-02-02', 'Absent', NULL);
INSERT INTO ATTENDANCE (attendance_id, student_id, course_id, attendance_date, status, remarks) VALUES (attendance_seq.NEXTVAL, 25, 13, DATE '2024-02-01', 'Present', NULL);
INSERT INTO ATTENDANCE (attendance_id, student_id, course_id, attendance_date, status, remarks) VALUES (attendance_seq.NEXTVAL, 28, 17, DATE '2024-02-01', 'Present', NULL);
INSERT INTO ATTENDANCE (attendance_id, student_id, course_id, attendance_date, status, remarks) VALUES (attendance_seq.NEXTVAL, 31, 25, DATE '2024-02-02', 'Present', NULL);
INSERT INTO ATTENDANCE (attendance_id, student_id, course_id, attendance_date, status, remarks) VALUES (attendance_seq.NEXTVAL, 31, 29, DATE '2024-02-03', 'Late', NULL);
INSERT INTO ATTENDANCE (attendance_id, student_id, course_id, attendance_date, status, remarks) VALUES (attendance_seq.NEXTVAL, 34, 25, DATE '2024-02-02', 'Present', NULL);
INSERT INTO ATTENDANCE (attendance_id, student_id, course_id, attendance_date, status, remarks) VALUES (attendance_seq.NEXTVAL, 37, 37, DATE '2024-02-03', 'Absent', NULL);
INSERT INTO ATTENDANCE (attendance_id, student_id, course_id, attendance_date, status, remarks) VALUES (attendance_seq.NEXTVAL, 40, 57, DATE '2024-02-01', 'Present', NULL);
INSERT INTO ATTENDANCE (attendance_id, student_id, course_id, attendance_date, status, remarks) VALUES (attendance_seq.NEXTVAL, 43, 61, DATE '2024-02-01', 'Present', NULL);
INSERT INTO ATTENDANCE (attendance_id, student_id, course_id, attendance_date, status, remarks) VALUES (attendance_seq.NEXTVAL, 46, 65, DATE '2024-02-02', 'Late', NULL);
INSERT INTO ATTENDANCE (attendance_id, student_id, course_id, attendance_date, status, remarks) VALUES (attendance_seq.NEXTVAL, 49, 69, DATE '2024-02-02', 'Present', NULL);
INSERT INTO ATTENDANCE (attendance_id, student_id, course_id, attendance_date, status, remarks) VALUES (attendance_seq.NEXTVAL, 52, 69, DATE '2024-02-02', 'Absent', NULL);
INSERT INTO ATTENDANCE (attendance_id, student_id, course_id, attendance_date, status, remarks) VALUES (attendance_seq.NEXTVAL, 55, 73, DATE '2024-02-01', 'Present', NULL);
INSERT INTO ATTENDANCE (attendance_id, student_id, course_id, attendance_date, status, remarks) VALUES (attendance_seq.NEXTVAL, 58, 73, DATE '2024-02-01', 'Present', NULL);
INSERT INTO ATTENDANCE (attendance_id, student_id, course_id, attendance_date, status, remarks) VALUES (attendance_seq.NEXTVAL, 67, 77, DATE '2024-02-03', 'Present', NULL);
INSERT INTO ATTENDANCE (attendance_id, student_id, course_id, attendance_date, status, remarks) VALUES (attendance_seq.NEXTVAL, 70, 77, DATE '2024-02-03', 'Late', NULL);
INSERT INTO ATTENDANCE (attendance_id, student_id, course_id, attendance_date, status, remarks) VALUES (attendance_seq.NEXTVAL, 73, 89, DATE '2024-02-02', 'Present', NULL);
INSERT INTO ATTENDANCE (attendance_id, student_id, course_id, attendance_date, status, remarks) VALUES (attendance_seq.NEXTVAL, 76, 93, DATE '2024-02-02', 'Present', NULL);
INSERT INTO ATTENDANCE (attendance_id, student_id, course_id, attendance_date, status, remarks) VALUES (attendance_seq.NEXTVAL, 79, 93, DATE '2024-02-02', 'Absent', NULL);
INSERT INTO ATTENDANCE (attendance_id, student_id, course_id, attendance_date, status, remarks) VALUES (attendance_seq.NEXTVAL, 82, 97, DATE '2024-02-03', 'Present', NULL);
INSERT INTO ATTENDANCE (attendance_id, student_id, course_id, attendance_date, status, remarks) VALUES (attendance_seq.NEXTVAL, 85, 97, DATE '2024-02-03', 'Present', NULL);
INSERT INTO ATTENDANCE (attendance_id, student_id, course_id, attendance_date, status, remarks) VALUES (attendance_seq.NEXTVAL, 88, 105, DATE '2024-02-01', 'Late', NULL);
INSERT INTO ATTENDANCE (attendance_id, student_id, course_id, attendance_date, status, remarks) VALUES (attendance_seq.NEXTVAL, 91, 105, DATE '2024-02-01', 'Present', NULL);
INSERT INTO ATTENDANCE (attendance_id, student_id, course_id, attendance_date, status, remarks) VALUES (attendance_seq.NEXTVAL, 94, 65, DATE '2024-02-02', 'Present', NULL);
INSERT INTO ATTENDANCE (attendance_id, student_id, course_id, attendance_date, status, remarks) VALUES (attendance_seq.NEXTVAL, 97, 69, DATE '2024-02-02', 'Absent', NULL);
INSERT INTO ATTENDANCE (attendance_id, student_id, course_id, attendance_date, status, remarks) VALUES (attendance_seq.NEXTVAL, 100, 73, DATE '2024-02-03', 'Present', NULL);
INSERT INTO ATTENDANCE (attendance_id, student_id, course_id, attendance_date, status, remarks) VALUES (attendance_seq.NEXTVAL, 103, 77, DATE '2024-02-01', 'Present', NULL);
INSERT INTO ATTENDANCE (attendance_id, student_id, course_id, attendance_date, status, remarks) VALUES (attendance_seq.NEXTVAL, 109, 81, DATE '2024-02-01', 'Present', NULL);
INSERT INTO ATTENDANCE (attendance_id, student_id, course_id, attendance_date, status, remarks) VALUES (attendance_seq.NEXTVAL, 115, 85, DATE '2024-02-02', 'Late', NULL);
INSERT INTO ATTENDANCE (attendance_id, student_id, course_id, attendance_date, status, remarks) VALUES (attendance_seq.NEXTVAL, 118, 85, DATE '2024-02-03', 'Present', NULL);
INSERT INTO ATTENDANCE (attendance_id, student_id, course_id, attendance_date, status, remarks) VALUES (attendance_seq.NEXTVAL, 121, 85, DATE '2024-02-03', 'Absent', NULL);
INSERT INTO ATTENDANCE (attendance_id, student_id, course_id, attendance_date, status, remarks) VALUES (attendance_seq.NEXTVAL, 124, 1, DATE '2024-02-01', 'Present', NULL);
INSERT INTO ATTENDANCE (attendance_id, student_id, course_id, attendance_date, status, remarks) VALUES (attendance_seq.NEXTVAL, 127, 9, DATE '2024-02-01', 'Present', NULL);
INSERT INTO ATTENDANCE (attendance_id, student_id, course_id, attendance_date, status, remarks) VALUES (attendance_seq.NEXTVAL, 1, 13, DATE '2024-02-02', 'Late', NULL);
INSERT INTO ATTENDANCE (attendance_id, student_id, course_id, attendance_date, status, remarks) VALUES (attendance_seq.NEXTVAL, 4, 17, DATE '2024-02-02', 'Present', NULL);
INSERT INTO ATTENDANCE (attendance_id, student_id, course_id, attendance_date, status, remarks) VALUES (attendance_seq.NEXTVAL, 10, 25, DATE '2024-02-03', 'Present', NULL);
INSERT INTO ATTENDANCE (attendance_id, student_id, course_id, attendance_date, status, remarks) VALUES (attendance_seq.NEXTVAL, 13, 29, DATE '2024-02-03', 'Absent', NULL);
INSERT INTO ATTENDANCE (attendance_id, student_id, course_id, attendance_date, status, remarks) VALUES (attendance_seq.NEXTVAL, 22, 37, DATE '2024-02-08', 'Present', NULL);
INSERT INTO ATTENDANCE (attendance_id, student_id, course_id, attendance_date, status, remarks) VALUES (attendance_seq.NEXTVAL, 25, 57, DATE '2024-02-10', 'Present', NULL);
INSERT INTO ATTENDANCE (attendance_id, student_id, course_id, attendance_date, status, remarks) VALUES (attendance_seq.NEXTVAL, 28, 61, DATE '2024-02-09', 'Present', NULL);
INSERT INTO ATTENDANCE (attendance_id, student_id, course_id, attendance_date, status, remarks) VALUES (attendance_seq.NEXTVAL, 31, 65, DATE '2024-02-09', 'Present', NULL);

COMMIT;

------------------------------------------------------------------------------------------------------------
-- VERIFICATION QUERIES (run after insert to sanity check)
------------------------------------------------------------------------------------------------------------
-- SELECT COUNT(*) FROM DEPARTMENTS;
-- SELECT COUNT(*) FROM PROGRAMS;
-- SELECT COUNT(*) FROM TEACHERS;
-- SELECT COUNT(*) FROM COURSES;
-- SELECT COUNT(*) FROM STUDENTS;
-- SELECT COUNT(*) FROM ENROLLMENTS;
-- SELECT COUNT(*) FROM GRADES;
-- SELECT COUNT(*) FROM ATTENDANCE;
------------------------------------------------------------------------------------------------------------