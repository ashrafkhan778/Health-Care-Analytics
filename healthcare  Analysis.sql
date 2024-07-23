CREATE DATABASE Healthcare;
drop database healthcare ;
use Healthcare ;

-- 1, Select all records:

select * from healthcares ;

-- 2,Select patients with 'Cancer':

select * from  healthcares
where Medical_Condition  = 'Cancer' ;

-- 3, Count of patients by gender:

select Gender ,count(*) As  patients_by_gender
from  Healthcares 
group  by Gender;

-- 4, Average billing amount:

select avg(Billing_Amount) AS  Average_billing_amount from healthcares ;


--  5, Patients admitted in 2023:

select * from healthcares
where year(Date_of_Admission) = 2023 ;


-- 6 , Doctors treating more than 2 patients:

select Doctor , count(*) As No_of_patients
from healthcares
group by  Doctor
having count(*)>1;

-- 7, Patients with 'Blue Cross' insurance:
select * from healthcares
where Insurance_Provider ='Blue Cross' ;

-- 8, List all unique hospitals:

select distinct Hospital from healthcares ;

-- 9, Patients older than 50:

select * from healthcares
where Age > 50 ;

-- 10 Total billing amount for 'Medicare' patients:

select sum(Billing_Amount) AS Total_BillingAmount_Insurance_Provider
from healthcares
where Insurance_Provider = 'Medicare' ;

-- 11,Patients sorted by billing amount descending:

select * from healthcares
order by Billing_Amount desc ;

-- 12 Count of patients by blood type:

select Blood_Type , count(*) from healthcares
group by  Blood_Type ;

-- 13, Patients who stayed more than 10 days:


select * from healthcares where datediff(Discharge_Date,Date_of_Admission)>10 ; 

-- 14 ,Doctors and their average patient age:
select Doctor ,avg(age) As AVG_age_Patient
from healthcares
group by Doctor ;

-- 15,Patients with 'Ibuprofen' medication:

select * from healthcares
where Medication = 'Ibuprofen' ;

-- 16,Count of patients with 'Abnormal' test results:

select count(*) from healthcares
where Test_Results = 'Abnormal' ;

-- 17, Top 5 most expensive bills:

select * from healthcares
order by Billing_Amount desc limit 5 ;


-- 18, Patients with 'Emergency' admission type:

select * from healthcares
where Admission_Type = 'Emergency';

-- 19, Count of patients by admission type:

select Admission_Type , count(*) As Total_Patients
from healthcares
group by Admission_Type ;

-- 20, Total billing amount per hospital:

select hospital ,sum(Billing_Amount) AS Total_billing_amount_per_hospital
from healthcares 
group by hospital;


-- 21 Patients with a specific doctor and medical condition:

select * from healthcares
where Doctor = 'Matthew Smith' and Medical_Condition = 'Cancer' ;

-- 22, Average billing amount by insurance provider:

select Insurance_Provider , avg(Billing_Amount) 
from healthcares
group by Insurance_Provider ;

-- 23 List of patients sorted by admission date:

select * from healthcares
order by Date_of_Admission ;
 -- 24 Patients admitted in the last 6 months:

SELECT * FROM healthcares WHERE Date_of_Admission > DATE_SUB(CURDATE(), INTERVAL 6 MONTH);
 
 -- 25, Doctors with their respective hospitals:

select Doctor , Hospital from healthcares 
group by  Doctor , Hospital ;

-- 26, Patients whose name starts with 'A':

select * from healthcares
where name like 'A%' ;

-- 27, Patients with 'A-' blood type and 'Cancer':

select * from healthcares
where Blood_Type = 'A-' and Medical_Condition = 'Cancer' ;

-- 28, Highest billing amount for each medical condition:

select Medical_Condition , max(Billing_Amount) from healthcares
group by Medical_Condition ;

-- 29 , Count of patients by room number:

select Room_Number ,count(*) As NO_of_patients
from healthcares 
group by Room_Number ;
 
 -- 30, Average age of patients by medical condition:

select Medical_Condition , avg(age) from healthcares
group by Medical_Condition  ;

-- 31 , Total billing amount by admission type:

select  Admission_Type , sum(Billing_Amount) 
from  healthcares
group by Admission_Type ;

-- 32, Patients discharged in 2022:

select * from healthcares
where year(Discharge_Date) =2022 ;


-- 33, List of all medications used:

 
select distinct Medication from healthcares ;


-- 34 Patients with multiple medical conditions:

SELECT * 
FROM healthcares
WHERE Medical_Condition LIKE '%,%';
 
-- 35, Doctors treating 'Diabetes' patients:


select Doctor from healthcares
where Medical_Condition =  'Diabetes' ;

-- 36,Average length of stay for patients:

SELECT AVG(DATEDIFF(Discharge_Date, Date_of_Admission)) AS Avg_Length_of_Stay FROM healthcares;

-- 37, Patients admitted in January:

select  * from healthcares
where month(Date_of_Admission) =1 ;

--  38, Count of patients with 'Aetna' insurance:


select count(*) from healthcares
where Insurance_Provider = 'Aetna' ;


-- 39 , Patients sorted by discharge date:

select * from healthcares
order by Discharge_Date ;

-- 40 Patients admitted on weekends:

select * from healthcares where dayofweek(Date_of_Admission) in(1,7) ;

--  41 Patients by gender and medical condition:

select Gender ,Medical_Condition  , count(*)
from healthcares
group by  Gender ,Medical_Condition ;


-- 42 , Highest billing amount per room:

select Room_Number , max(Billing_Amount)
from healthcares
group by Room_Number ;

--  43, Patients with 'Penicillin' medication and 'Normal' test results:

select * from healthcares
where Medication = 'Penicillin' and Test_Results = 'Normal' ;

--  44,Doctors and their patient count:

select  Doctor , count(*) from healthcares
group by Doctor ;

-- 45, Patients with 'Abnormal' test results and 'Cancer':

select * from healthcares
where  Test_Results = 'Abnormal' AND Medical_Condition = 'Cancer';


-- 46, Count of patients by hospital:

select Hospital , count(*) from healthcares
group by Hospital ;

--  47, Patients older than 60 with 'Obesity':

select * from healthcares
where Age = 60 and Medical_Condition = 'Obesity' ;



select Medical_Condition,avg(age) as average_age 
from healthcares
group by Medical_Condition