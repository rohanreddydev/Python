create table patients (patient_id int primary key,
						patient_name varchar(100),
						patient_age int not null,
						gender varchar(100) not null,
						phone_number varchar(100) not null);
create table doctors (doctor_id int primary key,
						doctor_name varchar(100) not null,
						specilization varchar(100) not null,
						phone_number varchar(100) not null); 
CREATE TABLE appointments (
    appointment_id INT PRIMARY KEY,
    patient_id INT NOT NULL,
    doctor_id INT NOT NULL,
    appointment_date DATE NOT NULL,
    bill_amount DECIMAL(10,2) NOT NULL,

    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id)
);

insert into patients(patient_id,patient_name,patient_age,gender,phone_number)values
(1,'Rohan',22,'Male','9685743210'),
(2,'Sameer',23,'Male','9675743210'),
(3,'Abhi',24,'Male','8685743210'),
(4,'Venkatesh',25,'Male','7685743210'),
(5,'Kiran',22,'Male','2314569870');

select * from patients;



insert into doctors (doctor_id,doctor_name,specilization, phone_number) values
(101, 'Dr. Sharma', 'Cardiologist', '9876500001'),
(102, 'Dr. Rao', 'Dermatologist', '9876500002'),
(103, 'Dr. Kumar', 'Neurologist', '9876500003');

select * from doctors;

INSERT INTO appointments
(appointment_id, patient_id, doctor_id, appointment_date, bill_amount)
VALUES
(1001, 1, 101, '2026-06-20', 1500.00),
(1002, 2, 102, '2026-06-21', 1200.00),
(1003, 3, 103, '2026-06-22', 2500.00),
(1004, 1, 102, '2026-06-23', 1800.00),
(1005, 2, 103, '2026-06-24', 3000.00);

select * from appointments;