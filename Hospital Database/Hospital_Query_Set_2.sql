#Hospital Patient Analytics – 50 KPI Questions
#Section A: Patient Demographics KPIs
use student_db;

#Q1. How many patients are registered in the hospital?
select count(*) 
from PatientRecords;

#Q2. What is the average age of patients?
select avg(age)
from PatientRecords;

#Q3. Who is the youngest patient?
select PatientName,age
from patientRecords
order by age 
limit 1;

#Q4. Who is the oldest patient?
select PatientName,age
from patientRecords
order by age desc 
limit 1;

#Q5. How many male and female patients are there?
select gender,count(gender)
from PatientRecords
group by gender;

#Q6. What percentage of patients are male?
select (count(*)*100) / 
(select count(*) 
from PatientRecords) as male_percentage
from patientRecords
where gender = 'Male';

#Q7. What percentage of patients are female?
select (count(*)*100)/
(select count(*) from PatientRecords) as fem_percentage
from PatientRecords
where gender = 'Female';

#Q8. Which city contributes the highest number of patients?
select city,count(PatientName)
from PatientRecords
group by city
order by count(PatientName) desc
limit 1;

#Q9. Which city contributes the lowest number of patients?
select city,count(PatientName)
from PatientRecords
group by city
order by count(PatientName) 
limit 1;

#Q10. What is the average patient age by city?
select city,avg(Age)
from PatientRecords
group by city;

#Section B: Disease Analytics KPIs
#Q11. Which disease has the highest number of patients?
select Disease,count(PatientName)
from PatientRecords
group by Disease
order by count(PatientName) desc
limit 1;

#Q12. Which disease has the lowest number of patients?
select Disease,count(PatientName)
from PatientRecords
group by Disease
order by count(PatientName)
limit 1;

#Q13. How many patients are diagnosed with Heart Disease?
select  Disease,count(PatientName)
from PatientRecords
where Disease = 'Heart Disease';

#Q14. How many patients are diagnosed with Diabetes?
select Disease,count(PatientName)
from PatientRecords
where Disease = 'Diabetes';

#Q15. What percentage of patients have Hypertension?
select (count(*)*100)/
(select count(*) from PatientRecords) as percen_hypertension
from PatientRecords
where Disease = 'Hypertension';

#Q16. What is the average age of patients by disease?
select Disease,avg(age)
from PatientRecords
group by Disease;

#Q17. Which disease affects the oldest patients on average?
select Disease,avg(age)
from PatientRecords
group by Disease
order by avg(age) desc
limit 1;

#Q18. Which disease affects the youngest patients on average?
select Disease,avg(age)
from PatientRecords
group by Disease
order by avg(age) 
limit 1;

#Q19. What is the disease distribution across cities?
select Disease,City,count(*)
from PatientRecords
group by City,Disease
order by City,count(*) desc ;

#Q20. Which city has the highest number of Heart Disease patients?
select City,count(*)
from PatientRecords
where Disease = 'Heart Disease'
group by City
order by count(*) desc
limit 1;

#Section C: Financial KPIs

#Q21. What is the total treatment revenue generated?
select sum(TreatmentCost)
from PatientRecords;

#Q22. What is the average treatment cost?
select avg(TreatmentCost)
from PatientRecords;

#Q23. What is the maximum treatment cost?
select max(TreatmentCost)
from PatientRecords;

#Q24. What is the minimum treatment cost?
select min(TreatmentCost)
from PatientRecords;

#Q25. Which disease generates the highest revenue?
select Disease,sum(TreatmentCost)
from PatientRecords
group by Disease
order by sum(TreatmentCost) desc
limit 1;

#Q26. Which disease generates the lowest revenue?
select Disease,sum(TreatmentCost)
from PatientRecords
group by Disease
order by sum(TreatmentCost) 
limit 1;

#Q27. What is the average treatment cost by disease?
select Disease,avg(TreatmentCost)
from PatientRecords
group by Disease;

#Q28. Which patient incurred the highest treatment cost?
select PatientName,TreatmentCost
from patientRecords
order by TreatmentCost desc
limit 1;

#Q29. Which city generates the highest treatment revenue?
select City,sum(TreatmentCost)
from patientRecords
group by city
order by sum(TreatmentCost)
limit 1;

#Q30. How many patients have treatment costs above the average cost?
select count(*) as Patient_count
from patientRecords
where TreatmentCost>
( 
	select avg(TreatmentCost)
	from PatientRecords
);

#Section D: Hospital Stay KPIs
#Q31. What is the average hospital stay duration?
select avg(datediff(DischargeDate, AdmissionDate)) as Avg_Hos_Stay
from PatientRecords;

#Q32. What is the maximum hospital stay duration?
select max(datediff(DischargeDate, AdmissionDate)) as max_Hos_Stay
from PatientRecords;

#Q33. What is the minimum hospital stay duration?
select min(datediff(DischargeDate, AdmissionDate)) as min_Hos_Stay
from PatientRecords;

#Q34. Which patient stayed the longest?
select PatientName,datediff(DischargeDate, AdmissionDate) as Stay_duration
from PatientRecords
order by Stay_duration desc
limit 1;

#Q35. Which disease has the longest average stay?
select Disease,avg(datediff(DischargeDate, AdmissionDate))as avg_Stay_duration
from PatientRecords
group by Disease
order by avg_Stay_duration desc
limit 1;

#Q36. Which disease has the shortest average stay?
select Disease,avg(datediff(DischargeDate, AdmissionDate))as avg_Stay_duration
from PatientRecords
group by Disease
order by avg_Stay_duration 
limit 1;

#Q37. What is the average stay duration by city?
select City,avg(datediff(DischargeDate, AdmissionDate))as avg_Stay_duration
from PatientRecords
group by City;

#Q38. How many patients stayed more than 10 days?
select count(*)
from PatientRecords
where datediff(DischargeDate, AdmissionDate)>10;

#Q39. How many patients stayed less than 5 days?
select count(*)
from PatientRecords
where datediff(DischargeDate, AdmissionDate)>5;

#Q40. What percentage of patients stayed more than the average duration?
select 
    (count(*) * 100.0 / (select count(*) from PatientRecords)) as Percentage
from PatientRecords
where datediff(DischargeDate, AdmissionDate) >
(
    select avg(datediff(DischargeDate, AdmissionDate))
    FROM PatientRecords
);
#Section E: Health Analytics KPIs
#Q41. What is the average Blood Pressure of all patients?
select avg(BloodPressure)
from PatientRecords;

#Q42. What is the average Cholesterol level?
select avg(Cholesterol)
from PatientRecords;

#Q43. What is the average BMI?
select avg(BMI)
from PatientRecords;

#Q44. How many patients have Blood Pressure above 140?
select count(*)
from PatientRecords
where BloodPressure>140; 

#Q45. How many patients have Cholesterol above 240?
select count(*)
from PatientRecords
where Cholesterol>140; 

#Q46. How many patients have BMI greater than 30?
select count(*)
from PatientRecords
where BMI>30; 

#Q47. Which disease has the highest average Blood Pressure?
select Disease,avg(BloodPressure) as high_avg_blood_press
from PatientRecords
group by Disease
order by high_avg_blood_press desc
limit 1;

#Q48. Which disease has the highest average Cholesterol?
select Disease,avg(Cholesterol) as high_avg_cholesterol
from PatientRecords
group by Disease
order by high_avg_cholesterol desc
limit 1;

#Q49. Which disease has the highest average BMI?
select Disease,avg(BMI) as high_avg_BMI
from PatientRecords
group by Disease
order by high_avg_BMI desc
limit 1;

#Q50. How many smokers and non-smokers are there?
select SmokingStatus,count(*)
from PatientRecords
group by SmokingStatus;

