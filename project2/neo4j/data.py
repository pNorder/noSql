from faker import Faker
from random import *

def generateData(numDoctors, numPatients, doctorfilename, patientfilename, illnessfilename, treatmentsfilename, matchfilename):
    doctors = []
    patients = []
    gtreatments = []
    gillness = []
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
        doc = [firstName, surname, str(phone), str(salary)]
        doctors.append(doc)
        doctorfile.write("CREATE (d: Doctor {name:\"" +  firstName + " " + 
            surname + "\"}, {salary: \"" + str(salary) +"\"}, {phone: \"" + str(phone) +"\"})\n")

        #35%chance of being a patient
        if(randint(1, 100) <=35):
            insuranceno = fake.itin()
            room = randint(1, 699)
            pat = [firstName, surname, str(room), str(insuranceno)]
            patients.append(pat)
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
        gtreatments.append(words[0])
        treatmentfile.write("CREATE (t: Treatment {name:\"" +  words[0] + 
            "\"}, {cost: \"" + words[1] +"\"})\n")
    
    for illness in illnesses:
        gillness.append(illness)
        illnessfile.write("CREATE (i: Illness {name:\"" +  illness + "\"})\n")

    matchfile = open(matchfilename, "w+")
    for patient in patients:
        doc1 = randint(0, len(doctors)-1)
        doc2 = randint(0, len(doctors)-1)
        ilno = randint(0, len(gillness)-1)
        treat = randint(0, len(gtreatments)-1)
        while doc1 == doc2:
            doc2 = randint(0, len(doctors))
        matchfile.write("MATCH (d:Doctor {name: \"" + doctors[doc1][0] + " " + doctors[doc1][1] +
            "}), (p:Patient {name: \"" + patient[0] +" "+ patient[1] + "\"}) CREATE (d)-[r:Treats]->(p)\n")
        matchfile.write("MATCH (d:Doctor {name: \"" + doctors[doc2][0] + " " + doctors[doc2][1] +
            "}), (p:Patient {name: \"" + patient[0] +" " + patient[1] + "\"}) CREATE (d)-[r:Treats]->(p)\n")

        matchfile.write("MATCH (i: Illness {name: \"" + gillness[ilno] +
            "}), (p:Patient {name: \"" + patient[0] +" " + patient[1] + "\"}) CREATE (p)-[r:ailed_by]->(i)\n")

        matchfile.write("MATCH (t: Treatment {name: \"" + gtreatments[treat] +
            "}), (p:Patient {name: \"" + patient[0] +" " + patient[1] + "\"}) CREATE (p)-[r:recieves]->(t))\n")




df = "/home/trace/Documents/nosql/project2/neo4j/doctors.txt"
pf = "/home/trace/Documents/nosql/project2/neo4j/patients.txt"
ifile = "/home/trace/Documents/nosql/project2/neo4j/illness.txt"
tf = "/home/trace/Documents/nosql/project2/neo4j/treatments.txt"
match = "/home/trace/Documents/nosql/project2/neo4j/match.txt"
generateData(100, 10000, df, pf, ifile, tf, match)
