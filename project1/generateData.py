from faker import Faker
from random import *

def generateUsers():
    fake = Faker()
    fake.random.seed(12345)
    userFile = open("postgres/users.csv", "w")
    userMongo = open("mongo/data.js", "a+")
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
        
        userMongo.write("db.users.insert({_id: \"" + str(user_id) + 
                        "\", emailAddress:\"" + email + "\",name: { first: \"" + 
                        firstName + "\", last:\"" + surname + "\"}, phoneNumber: \"" + 
                        str(phone) + "\", address: { line1: \"" + street + "\"},city: \"" 
                        + city + "\", state: \"" + state + "\", zip: \"" + zipcode + "\"})\n") 
                        
                
def generateRecipes():
        ingred = ["mozzarella", "parmesean", "ricota", "gorgonzola", "flour", "salt", "olive oil",
                   "mushrooms", "bell peppers", "banana peppers", "spinach", "Alfalfa Sprouts",  "Artichoke hearts", "Avocado  Baby leeks", "Beetroot", "Black Beans", "Broccoli", "Capers", "Capicolla", "Carrot", "Cherry tomatoes", "Dried tomatoes", "Eggplant", "Fungi", "Fungi carciofi", "Green peppers", "Kalamata olives", "Lettuce", "Mushrooms", "Onions", "Olives", "Peas", "Porcini mushrooms", "Portobello Mushrooms", "Red beans", "Red onions", "Red peppers", "Roast cauliflower", "Roasted eggplant", "Roasted Garlic", "Roasted peppers", "scallions", "Shallots", "Snow peas", "Spinach", "Sun dried tomatoes", "Sweet corn", "Watercress", "Wild mushrooms", "Yellow peppers", "Yellow squash", "Zucchini", "Bacon", "meatballs", "chicken", "peperoni", "ham", "sausage"]
                        
        recipeFile = open("postgres/recipes.csv", "w")
        recipeMongo = open("mongo/data.js", "a+")
        for i in range(0, 50):
                recipeFile.write(str(i) + ',' + "recipe" + str(i) + ',' 
                                 + "description " + str(i) + ',' + 
                                 "Instructions " + str(i) + "\n")
                
                thisList = []
                for k in ingred:
                        if(randint(0, 100)<25):
                                thisList.append(k)
                qtylist = []
                for j in thisList:
                        qtylist.append(randint(1, 4))
                recipeMongo.write("db.recipes.insert({_id: \"" + str(i) + 
                                  "\", name: \"recipe" + str(i) + 
                                  "\",instructions: \"instructions for recipe "
                                   + str(i) + "\", description: \"description for recipe " 
                                   + str(i) + "\", ingredients: " + str(thisList) + ", quantities: " + str(qtylist) + "})\n")

def generateGookedWith():
        cwFile = open("postgres/cookedwith.csv", "w")
        for i in range(0, 50):
                #through all recipes
                numIngredients = randint(3, 10)
                added = set()
                for k in range (0, numIngredients):
                        ingredient_id = randint(0, 57)
                        if(ingredient_id not in added):
                                ingredient_amt = randint(2, 7)
                                cwFile.write(str(i) + "," + str(ingredient_id) + "," + str(ingredient_amt) +"\n" )
                                added.add(ingredient_id)
                
                                                
def generateIngredients():
        ingred = ["mozzarella", "parmesean", "ricota", "gorgonzola", "flour", "salt", "olive oil",
                   "mushrooms", "bell peppers", "banana peppers", "spinach", "Alfalfa Sprouts",  "Artichoke hearts", "Avocado ", "Baby leeks", "Beetroot", "Black Beans", "Broccoli", "Capers", "Capicolla", "Carrot", "Cherry tomatoes", "Dried tomatoes", "Eggplant", "Fungi", "Fungi carciofi", "Green peppers", "Kalamata olives", "Lettuce", "Mushrooms", "Onions", "Olives", "Peas", "Porcini mushrooms", "Portobello Mushrooms", "Red beans", "Red onions", "Red peppers", "Roast cauliflower", "Roasted eggplant", "Roasted Garlic", "Roasted peppers", "scallions", "Shallots", "Snow peas", "Spinach", "Sun dried tomatoes", "Sweet corn", "Watercress", "Wild mushrooms", "Yellow peppers", "Yellow squash", "Zucchini", "Bacon", "meatballs", "chicken", "peperoni", "ham", "sausage"]
        ingFile = open("postgres/ingredients.csv", "w")
        ingMongo = open("mongo/data.js", "a+")
        i = 0
        for ingredient in ingred:
                quantity = randint(15, 150)
                description = "fresh " + ingredient + " is delicious on our pizza"
                ingFile.write(str(i) + ","+ ingredient + ',' + description + ',' + str(quantity) +'\n')
                i = i + 1
                
                ingMongo.write("db.ingredients.insert({name: \"" + ingredient + "\"," +
                               " description: \"" + description + "\", quantity:\"" + 
                               str(quantity) + "\"})\n")
                

def generateOrders():
    fake = Faker()
    orderFile = open("postgres/orders.csv", "w")
    orderMongo = open("mongo/data.js", "a+")
    for i in range(0,100000):
        user = randint(0, 4999)
        recipe = randint(0, 49)
        datetime = fake.date() +" " + fake.time()
        orderFile.write(str(user) + ',' + datetime + ',' + str(recipe) + '\n')
        
        orderMongo.write("db.orders.insert({userID: \"" + str(user) + "\", recipe: \"" 
                         + str(recipe) + "\", timestamp: \""+ datetime + "\"})\n")
  
generateIngredients()      
generateUsers()
generateRecipes()
generateOrders()
generateGookedWith()