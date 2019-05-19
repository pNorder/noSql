from faker import Faker
from random import *

def generateUsers():
    fake = Faker()
    fake.random.seed(12345)
    userFile = open("users.csv", "w")
    userMongo = open("usersMongo.js", "w")
    for i in range(0,5000):
        user_id = i
        email = fake.email()
        fullName = fake.name()
        firstName = fullName.split()[0] 
        surname = fullName.split()[1]
        phone = fake.phone_number()
        street = fake.street_address()
        zipcode = fake.zipcode()
        city = fake.city()
        state = fake.state_abbr()
        userFile.write(str(user_id) + ',' + email + ',' + firstName + ',' + surname + ',' + str(phone) +
                       ',' + street + ",NULL,"  + city + ',' + state + ',' + zipcode + '\n')
        
        userMongo.write("db.users.insert({emailAddress:\"" + email + "\",name: { first: \"" + firstName + "\", last:\"" + surname + "\"}, phoneNumber: \"" + str(phone) + "\", address: { line1: \"" + street + "\"},city: \"" + city + "\", state: \"" + state + "\", zip: \"" + zipcode + "\"})\n") 
                        
                
def generateRecipes():
        recipeFile = open("recipes.csv", "w")
        recipeMongo = open("recipesMongo.js", "w")
        for i in range(0, 50):
                recipeFile.write(str(i) + ',' + "recipe" + str(i) + ',' 
                                 + "description " + str(i) + ',' + 
                                 "Instructions " + str(i) + "\n")
                
                recipeMongo.write("db.recipes.insert({name: \"recipe" + str(i) + "\",instructions: \"instructions for recipe " + str(i) + "\", description: \"description for recipe " + str(i) + "\", ingredients: [\"dough\"]})\n")
                
def generateIngredients():
        ingred = ["mozzarella", "parmesean", "ricota", "gorgonzola", "flour", "salt", "olive oil",
                   ""]

def generateOrders():
    fake = Faker()
    orderFile = open("orders.csv", "w")
    orderMongo = open("ordersMongo.js", "w")
    for i in range(0,100000):
        user = randint(0, 4999)
        recipe = randint(0, 49)
        datetime = fake.date() +" " + fake.time()
        orderFile.write(str(user) + ',' + datetime + ',' + str(recipe) + '\n')
        
        orderMongo.write("db.orders.insert({userID: \"" + str(user) + "\", recpie: \"" + str(recipe) + "\", timestamp: \""+ datetime + "\"})\n")
        
generateUsers()
generateRecipes()
generateOrders()