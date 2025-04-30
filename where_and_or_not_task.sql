select * from hospital

select * from doctor

select * from patient 

select * from schedule

select * from Appointment

---25 select query 

SELECT name FROM Hospital

SELECT DISTINCT name FROM Hospital 

select hospital_id from hospital

select hospital_id , name from hospital

SELECT COUNT(*) FROM Hospital

select distinct hospital_id, name from hospital 

SELECT name FROM Doctor

SELECT doctor_id, name, hospital_id FROM Doctor

SELECT DISTINCT hospital_id FROM Doctor

SELECT COUNT(*) FROM Doctor

SELECT doctor_id FROM Doctor

SELECT name FROM Patient

SELECT DISTINCT hospital_id FROM Patient

SELECT COUNT(*) FROM Patient

SELECT patient_id FROM Patient

SELECT hospital_id FROM Patient

SELECT DISTINCT patient_id FROM patient 

SELECT doctor_id, time_slot FROM Schedule

SELECT DISTINCT day FROM Schedule

SELECT COUNT(*) FROM Schedule

SELECT DISTINCT time_slot FROM Schedule 

SELECT time_slot FROM Schedule

SELECT schedule_id, day FROM Schedule

SELECT doctor_id FROM Schedule

SELECT patient_id, reason FROM Appointment 

---25 where clause

SELECT * FROM Hospital
WHERE hospital_id = 2 

SELECT * FROM Hospital
WHERE name LIKE 'city care'

SELECT * FROM Hospital
WHERE hospital_id < 3

SELECT * FROM Hospital
WHERE hospital_id BETWEEN 1 AND 3

SELECT * FROM Hospital
WHERE name IS NOT NULL

SELECT * FROM Doctor
WHERE hospital_id = 3

SELECT * FROM Doctor
WHERE name LIKE 'Dr.Anjali'

SELECT * FROM Doctor
WHERE doctor_id >= 4

SELECT * FROM Doctor
WHERE hospital_id IS NOT NULL

SELECT * FROM Doctor
WHERE hospital_id != 3 

SELECT * FROM Patient
WHERE name = 'priya tiwari'

SELECT * FROM Patient
WHERE patient_id >= 2

SELECT * FROM Patient
WHERE name LIKE 'sonal shahu'

SELECT * FROM Patient
WHERE hospital_id IS NULL OR hospital_id = 2 

SELECT * FROM Patient
WHERE hospital_id IS NOT NULL

SELECT * FROM Schedule
WHERE doctor_id = 101

SELECT * FROM Schedule
WHERE day = 'Monday'

SELECT * FROM Schedule
WHERE day != 'Monday'

SELECT * FROM Schedule
WHERE time_slot LIKE '1PM-4Pm'

SELECT * FROM Schedule
WHERE day LIKE 'Tuesday'

SELECT * FROM Appointment
WHERE date <= CURRENT_DATE

SELECT * FROM Appointment
WHERE reason LIKE 'cold'

SELECT * FROM Appointment
WHERE reason = 'cheak up'

SELECT * FROM Appointment
WHERE reason IS NOT NULL

SELECT * FROM Appointment
WHERE date BETWEEN '2025-01-26' AND '2025-02-25' 

---25 and operater

SELECT * FROM Hospital
WHERE hospital_id = 3 AND name = 'city care'

SELECT * FROM Hospital
WHERE hospital_id > 1 AND name LIKE 'city care'

SELECT * FROM Hospital
WHERE name LIKE 'city care' AND hospital_id > 2

SELECT * FROM Hospital
WHERE name = 'city care' AND hospital_id = 2

SELECT * FROM Hospital
WHERE hospital_id IN (3, 2) AND name ILIKE 'city care'

SELECT * FROM Doctor
WHERE doctor_id = 101 AND name = 'Dr.Anjali'

SELECT * FROM Doctor
WHERE hospital_id = 3 AND name LIKE 'Dr.Raj'

SELECT * FROM Doctor
WHERE doctor_id > 101 AND hospital_id < 3

SELECT * FROM Doctor
WHERE name LIKE 'Dr.Anjali' AND hospital_id = 1

SELECT * FROM Doctor
WHERE doctor_id BETWEEN 101 AND 103 AND hospital_id != 1

SELECT * FROM Patient
WHERE patient_id = 203 AND name = 'priya tiwari'

SELECT * FROM Patient
WHERE hospital_id = 1 AND name LIKE 'sonal shahu'

SELECT * FROM Patient
WHERE patient_id > 3 AND hospital_id < 3

SELECT * FROM Patient
WHERE name LIKE 'priya tiwari' AND hospital_id = 3

SELECT * FROM Patient
WHERE patient_id BETWEEN 201 AND 203 AND hospital_id != 3

SELECT * FROM Schedule
WHERE doctor_id = 103 AND day = 'Tuesday'

SELECT * FROM Schedule
WHERE day = 'Wednesday' AND time_slot LIKE '1PM-4Pm'

SELECT * FROM Schedule
WHERE doctor_id > 3 AND day = 'Monday'

SELECT * FROM Schedule
WHERE day = 'Tuesday' AND doctor_id BETWEEN 101 AND 103

SELECT * FROM Schedule
WHERE doctor_id = 101 AND day = 'Wednesday'

SELECT * FROM Appointment
WHERE patient_id = 201 AND date = '2025-02-05'

SELECT * FROM Appointment
WHERE patient_id = 203 AND reason = 'cheak up'

SELECT * FROM Appointment
WHERE date = '2025-02-05' AND reason LIKE 'cold'

SELECT * FROM Appointment
WHERE patient_id BETWEEN 201 AND 203 AND reason LIKE 'fever'

SELECT * FROM Appointment
WHERE date = '2025-02-25' AND reason = 'fever'

---or operater 

SELECT * FROM Hospital
WHERE hospital_id = 1 OR hospital_id = 2

SELECT * FROM Hospital
WHERE name = 'city care' OR name = 'city care'

SELECT * FROM Hospital
WHERE hospital_id > 1 OR name LIKE 'city care'

SELECT * FROM Hospital
WHERE name = 'city care' OR hospital_id < 1

SELECT * FROM Hospital
WHERE (hospital_id BETWEEN 1 AND 4) OR name LIKE 'city care'

SELECT * FROM Doctor
WHERE doctor_id = 103 OR doctor_id = 102

SELECT * FROM Doctor
WHERE name = 'Dr.Hathi' OR name = 'Dr.Raj'

SELECT * FROM Doctor
WHERE doctor_id < 103 OR hospital_id > 1

SELECT * FROM Doctor
WHERE name LIKE 'Dr.Anjali' OR hospital_id = 2

SELECT * FROM Doctor
WHERE name LIKE 'Dr.Raj' OR doctor_id = 103

SELECT * FROM Patient
WHERE patient_id = 203 OR patient_id = 201

SELECT * FROM Patient
WHERE name = 'priya tiwari' OR name = 'sonal shahu'

SELECT * FROM Patient
WHERE hospital_id = 3 OR hospital_id = 2

SELECT * FROM Patient
WHERE patient_id > 3 OR name ILIKE 'priya tiwari'

SELECT * FROM Patient
WHERE name = 'Ravi kumar' OR hospital_id = 2

SELECT * FROM Schedule
WHERE doctor_id = 103 OR doctor_id = 101

SELECT * FROM Schedule
WHERE day = 'Monday' OR day = 'Tuesday'

SELECT * FROM Schedule
WHERE doctor_id = 103 OR time_slot = '1PM-4Pm'

SELECT * FROM Schedule
WHERE day = 'Wednesday' OR doctor_id > 103

SELECT * FROM Schedule
WHERE time_slot = '1PM-4Pm' OR time_slot = '10AM-12pm'

SELECT * FROM Appointment
WHERE patient_id = 201 OR patient_id = 202

SELECT * FROM Appointment
WHERE date = '2025-02-05' OR reason = 'cold'

SELECT * FROM Appointment
WHERE reason = 'cheak up' OR reason = 'fever'

SELECT * FROM Appointment
WHERE date < '2025-01-26' OR patient_id > 201

SELECT * FROM Appointment
WHERE reason LIKE 'fever' OR patient_id = 203

--not---

SELECT * FROM Hospital
WHERE NOT hospital_id = 5

SELECT * FROM Doctor
WHERE NOT hospital_id = 2

SELECT * FROM Patient
WHERE NOT name = 'priya tiwari'

SELECT * FROM Schedule
WHERE NOT day = 'Monday'

SELECT * FROM Appointment
WHERE NOT reason = 'cheak up'

--use all operater: where,And,Or,Not--

SELECT * FROM Hospital
WHERE hospital_id BETWEEN 2 AND 3

SELECT * FROM Hospital
WHERE hospital_id > 1

SELECT * FROM Hospital
WHERE hospital_id <> 3

SELECT * FROM Hospital
WHERE name IS NOT NULL

SELECT * FROM Hospital
WHERE name LIKE 'city care'

SELECT * FROM Doctor
WHERE hospital_id = 1

SELECT * FROM Doctor
WHERE name = 'Dr.Anjali' AND hospital_id = 1

SELECT * FROM Doctor
WHERE hospital_id = 3 AND doctor_id < 103

SELECT * FROM Doctor 
WHERE hospital_id = 1 OR name = 'Dr.Raj'

SELECT * FROM Doctor 
WHERE doctor_id = 103

SELECT * FROM Appointment 
WHERE patient_id = 201 AND date = '2025-02-05'

SELECT * FROM Appointment
WHERE date = '2025-02-25' AND reason = 'fever'

SELECT * FROM Appointment
WHERE patient_id = 203
  OR reason = 'cold'

SELECT * FROM Appointment
WHERE NOT reason = 'fever'

SELECT * FROM Schedule
WHERE doctor_id = 103
  AND day ='Tuesday'

SELECT * FROM Schedule
WHERE time_slot = '2PM-4Pm'

SELECT * FROM Schedule
WHERE day = 'Wednesday'
  OR time_slot = '10AM-12pm'

SELECT * FROM Schedule
WHERE NOT (doctor_id = 101 AND day = 'Tuesday')

SELECT * FROM Patient
WHERE (hospital_id = 3 OR hospital_id = 2)
  AND name != 'sonal shahu'

SELECT * FROM Patient
WHERE hospital_id = 3
  OR hospital_id = 2
  OR name = 'priya tiwari'

SELECT * FROM Patient
WHERE NOT (hospital_id = 3 OR hospital_id = 2)

SELECT * FROM Doctor
WHERE (hospital_id = 3 OR hospital_id = 1)
  AND name != 'Dr.Raj'

SELECT * FROM Doctor
WHERE hospital_id = 3
  OR name = 'Dr.Anjali'

SELECT * FROM Doctor
WHERE NOT name = 'Dr.Raj'

SELECT * FROM Doctor
WHERE NOT (hospital_id = 2 OR hospital_id = 3)













































































