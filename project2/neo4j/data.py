from faker import Faker
from random import *

def generateData(numDoctors, numPatients, doctorfilename, patientfilename, illnessfilename, treatmentsfilename):
    doctors = []
    patients = []
    treatements = []
    illness = []
    #create statements of Doctors
    fake = Faker()
    fake.random.seed(12345)
    doctorfile = open(doctorfilename, "w+")
    patientfile = open(patientfilename, "w+")
    for i in range(0,numDoctors):
        doctor_id = i
        fullName = fake.name()
        firstName = fullName.split()[0] 
        surname = fullName.split()[1]
        phone = fake.phone_number()
        salary = randint(90000, 500000)
        doctorfile.write("CREATE (d: Doctor {name:\"" +  firstName + " " + 
            surname + "\"}, {salary: \"" + str(salary) +"\"}, {phone: \"" + str(phone) +"\"})\n")

        #35%chance of being a patient
        if(randint(1, 100) <=35):
            insuranceno = fake.itin()
            room = randint(1, 699)
            patientfile.write("CREATE (p: Patient {name:\"" +  firstName + " " + 
            surname + "\"}, {room: \"" + str(room) +"\"}, {insurancenum: \"" + str(insuranceno) +"\"})\n")

    for i in range(0,numPatients):
        patient = i
        fullName = fake.name()
        firstName = fullName.split()[0] 
        surname = fullName.split()[1]
        insuranceno = fake.itin()
        room = randint(1, 699)
        patientfile.write("CREATE (p: Patient {name:\"" +  firstName + " " + 
            surname + "\"}, {room: \"" + str(room) +"\"}, {insurancenum: \"" + str(insuranceno) +"\"})\n")

    treatments = [line.rstrip('\n') for line in open("/home/trace/Documents/nosql/project2/postgres/treatments.csv")]

    illnesses = [line.rstrip('\n') for line in open("/home/trace/Documents/nosql/project2/postgres/illness.txt")]

    treatmentfile = open(treatmentsfilename, "w+")
    illnessfile = open(illnessfilename, "w+")

    for treatment in treatments:
        words = treatment.split("|")
        treatmentfile.write("CREATE (t: Treatment {name:\"" +  words[0] + 
            "\"}, {cost: \"" + words[1] +"\"})\n")
    
    for illness in illnesses:
        illnessfile.write("CREATE (i: Illness {name:\"" +  illness + "\"})\n")

    
df = "/home/trace/Documents/nosql/project2/neo4j/doctors.txt"
pf = "/home/trace/Documents/nosql/project2/neo4j/patients.txt"
ifile = "/home/trace/Documents/nosql/project2/neo4j/illness.txt"
tf = "/home/trace/Documents/nosql/project2/neo4j/treatments.txt"

generateData(100, 10000, df, pf, ifile, tf)
