from faker import Faker
from random import *

def generateUsers():
    fake = Faker()
    fake.random.seed(12345)
    userFile = open("users.csv", "w")
    for i in range(0,5000):
        user_id = i
        email = fake.email()
        fullName = fake.name()
        firstName = fullName.split()[0] 
        surname = fullName.split()[1]
        phone = fake.phone_number()
        fullAddr = fake.address().split()
        city = fullAddr[-3][:-1]
        state = fullAddr[-2]
        zipcode = fullAddr[-1]
        del fullAddr[-3]
        streetAddr = " ".join(fullAddr)
        userFile.write(str(user_id) + ',' + email + ',' + firstName + ',' + surname + ',' +
                       ',' + streetAddr + ',' + city + ',' + state + ',' + zipcode + '\n')


def generateOrders():
    fake = Faker()
    orderFile = open("orders.csv", "w")
    for i in range(0,100000):
        user = randint(0, 5000)
        recipe = randint(0, 50)
        datetime = fake.date() + fake.time()
        orderFile.write(str(user) + ',' + str(recipe) + ',' + datetime + '\n')
        
generateUsers()
generateOrders()