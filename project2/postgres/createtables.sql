DROP DATABASE IF EXISTS hospital;
CREATE DATABASE hospital;

\c hospital
CREATE TABLE Doctors(
    doctor_id integer not null,
    first_name text not null,
    last_name text not null,
    salary integer not null,
    phone_number text not null,
    Primary Key (doctor_id)
);

CREATE TABLE Patients(
    patient_id Serial,
    first_name text not null,
    last_name text not null,
    room_number text not null,
    insurance_no text not NULL,
    Primary Key (patient_id)
);

CREATE TABLE Illness(
    illness_id SERIAL,
    name text not null,
    PRIMARY KEY (illness_id)
);

CREATE TABLE AiledBy(
    patient_id integer not null REFERENCES Patients,
    illness_id integer not null REFERENCES Illness,
    diagnosis_date date,
    Primary Key (patient_id, illness_id)
);

CREATE TABLE Treatments(
    treatment_id SERIAL,
    treatment_name text not null,
    cost integer not null,
    PRIMARY KEY (treatment_id)
);

CREATE TABLE Supervises(
    doctor_id integer not null REFERENCES Doctors,
    patient_id integer not null REFERENCES Patients,
    date_assigned date,
    PRIMARY KEY (doctor_id, patient_id)
);

CREATE TABLE Healing(
    patient_id integer not null REFERENCES Patients,
    treatment_id integer not null REFERENCES Treatments,
    start_date date,
    num_treatments integer,
    PRIMARY KEY (patient_id, treatment_id)
);
----------------------------------------------------------------------------------------------------
COPY Doctors FROM  '/app/postgres/project2/postgres/doctors.csv' (FORMAT CSV, DELIMITER (',') );

COPY Patients (first_name, last_name, room_number, insurance_no)
FROM  '/app/postgres/project2/postgres/patients.csv' (FORMAT CSV, DELIMITER (',') );

COPY Illness (name) 
FROM  '/app/postgres/project2/postgres/illness.txt' (FORMAT CSV, DELIMITER ('|') );

COPY Treatments (treatment_name, cost) 
FROM  '/app/postgres/project2/postgres/treatments.csv' (FORMAT CSV, DELIMITER ('|') );

COPY Supervises (doctor_id, patient_id, date_assigned) 
FROM  '/app/postgres/project2/postgres/supervises.csv' (FORMAT CSV, DELIMITER (',') );
