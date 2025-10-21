create database univercity;
use univercity;

create table students(
student_id int primary key,
student_name varchar(25),
gender enum("F","M"),
department_name varchar(20),
email varchar(100),
GPA decimal(3,2)
);

insert into students (student_id,student_name,gender,department_name,email,GPA) value
(1,"ArunKumar","M","Bsc","arunkumar03@gmail.com",9.1),
(2,"Lavanya","F","Bsc", "lavanya03@gmail.com",7.6),
(3,"Santhosh","M","Bcom BPS",NULL,8.3),
(4,"Vignesh","M","Bcom","vignesh09@gmail.com",9.0),
(5,"Gayathiri","F","Bcom","gayathiri28@gmail.com",9.2),
(6,"Vinu","F","Bcom BPS",NULL,7.9);

select*from students;

-- DISTINCT & WHERE --
select distinct department_name from students;

-- IS NULL & NOT NULL --

select student_id from students where email is null;
select student_id from students where email is not null;

-- IN, BETWEEN, NOT BETWEEN --

select student_id,student_name,department_name,GPA from students where GPA between 8.5 and 9.5;
select student_id,student_name,department_name,GPA from students where GPA not between 9.0 and 9.5; 





