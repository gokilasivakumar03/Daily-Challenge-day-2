create database hospital;
use hospital;

-- Write a SQL command to create a table named Patients with fields (PatientID, PatientName, Age, Gender, AdmissionDate).
create table patients (
patient_id int primary key,
patient_name varchar(50),
age int,
gender enum("M","F"),
admission_date date );

-- ALTER – Add Column
alter table patients add doctor_assigned varchar(50);

-- ALTER – Modify Column
alter table patients modify patient_name varchar(100);

 -- RENAME Table --
rename table patients to patients_info;

-- TRUNCATE vs DROP --
truncate table patients_info;
drop table patients_info;
