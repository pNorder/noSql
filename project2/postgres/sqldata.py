from faker import Faker
from random import *

def generateDoctors(n, doctorfilename, patientfilename):
    fake = Faker()
    fake.random.seed(12345)
    doctorfile = open(doctorfilename, "a+")
    patientfile = open(patientfilename, "w+")
    for i in range(0,n):
        doctor_id = i
        fullName = fake.name()
        firstName = fullName.split()[0] 
        surname = fullName.split()[1]
        phone = fake.phone_number()
        salary = randint(90000, 500000)
        doctorfile.write(str(doctor_id) + "," + firstName + "," + 
            surname + "," + str(salary) +"," + phone +"\n")

        #35%chance of being a patient
        if(randint(1, 100) <=35):
            insuranceno = fake.itin()
            room = randint(1, 699)
            patientfile.write( firstName + "," + 
            surname + "," + str(room) +"," + insuranceno +"\n")

def generatePatients(n, filename):
    fake = Faker()
    fake.random.seed(54321)
    postgresfile = open(filename, "a+")
    for i in range(0,n):
        patient = i
        fullName = fake.name()
        firstName = fullName.split()[0] 
        surname = fullName.split()[1]
        insuranceno = fake.itin()
        room = randint(1, 699)
        postgresfile.write( firstName + "," + 
            surname + "," + str(room) +"," + insuranceno +"\n")

def generateTreatments(filename):
    lines = [line.rstrip('\n') for line in open("treatments.txt")]
    treatementsfile = open(filename, "w+")
    for x in lines:
        treatementsfile.write(x + "|" +str(randint(20,50000))+ "\n")
    
def generateSupervises(numDoc, numPatients, filename):
    fake = Faker()
    supervisesfile = open(filename, "w+")
    for i in range(1, numPatients-1):
        seeingCount = randint(1,5)
        doctors = set()
        for j in range(1,seeingCount):
            did = randint(1, numDoc-1)
            if(did not in doctors):
                supervisesfile.write(str(did) + "," + str(i)+ "," + fake.date()+"\n")
                doctors.add(did)
            else:
                j = j-1
            


generateDoctors(100, "/home/trace/Documents/nosql/project2/postgres/doctors.csv",
    "/home/trace/Documents/nosql/project2/postgres/patients.csv")
generatePatients(10000,"/home/trace/Documents/nosql/project2/postgres/patients.csv")
generateTreatments("/home/trace/Documents/nosql/project2/postgres/treatments.csv")
generateSupervises(100, 10000, "/home/trace/Documents/nosql/project2/postgres/supervises.csv")
