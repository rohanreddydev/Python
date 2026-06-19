-- ● Display all patients 	
select * from patients;

-- ● Display all doctors 
select * from doctors;

-- ● Find appointments for a specific doctor 
select doctor_id,count(appointment_id) as appoitnemtCount
from appointments
group by doctor_id;

-- ● Count appointments per doctor 
select count(appointment_id) as count_of_appointment,doctor_id
from appointments
group by doctor_id;


-- ● Total billing amount 
select sum(bill_amount) as total_bill
from appointments;


-- ● INNER JOIN patients and appointments 

select a.patient_id,a.patient_name
from patients a 
inner join appointments b on a.patient_id=b.patient_id;


-- ● LEFT JOIN doctors and appointments 


select a.doctor_id,b.bill_amount
from doctors a 
left join appointments b on a.doctor_id=b.doctor_id;



-- ● Patients with more than one appointment 

select patient_id 
from appointments 
group by patient_id
having count(appointment_id)>1;

-- ● Highest bill amount 
select * from appointments;
select patient_id,sum(bill_amount) as total_bill
from appointments
group by patient_id
order by total_bill DESC
limit 1;

-- ● Doctor with maximum appointments 

select doctor_id,count(appointment_id) as Appointments_count
from appointments
group by doctor_id
order by Appointments_count desc 
limit 1;


