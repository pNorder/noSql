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
    patient_id integer not null,
    first_name text not null,
    last_name text not null,
    room_number text not null,
    insurance_no text not NULL,
    Primary Key (patient_id)
);

CREATE TABLE Illness(
    illness_id integer not null,
    name text not null,
    type text not null
);

CREATE TABLE AiledBy(
    patient_id integer not null REFERENCES Patients,
    illness_id integer not null REFERENCES Illness,
    diagnosis_date date,
    Primary Key (patient_id, illness_id)
);

CREATE TABLE Treats(
    doctor_id integer not null REFERENCES Doctors,
    patient_id integer not null REFERENCES Patients,
    treatment_start date,
    treatment text not null
);
