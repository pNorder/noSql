DROP DATABASE IF EXISTS bobspizza;
CREATE DATABASE bobspizza;

CREATE Table Users (
user_id SERIAL,
email_addr TEXT NOT NULL,
first_name TEXT NOT NULL,
surname TEXT,
phone_num TEXT NOT NULL,
addr_1 TEXT NOT NULL,
addr_2 TEXT,
city TEXT NOT NULL,
state TEXT NOT NULL,
zip TEXT NOT NULL,
PRIMARY KEY (user_id)
);

CREATE TABLE Recipes (
recipe_id SERIAL,
name TEXT NOT NULL,
description TEXT NOT NULL,
cooking_instruction TEXT NOT NULL,
PRIMARY KEY(recipe_id)
);

CREATE TABLE Ingredients(
ingredient_id SERIAL,
name TEXT NOT NULL,
description TEXT NOT NULL,
quantity integer NOT NULL,
PRIMARY KEY (ingredient_id)
);

CREATE TABLE Orders(
user_id SERIAL REFERENCES Users,
time TIMESTAMP NOT NULL,
recipe_id SERIAL REFERENCES Recipes,
PRIMARY KEY (user_id, recipe_id, time)
);

CREATE TABLE CookedWith (
    recipe_id SERIAL REFERENCES Recipes,
    ingredient_id SERIAL REFERENCES Ingredients,
    amount INTEGER,
    PRIMARY KEY (recipe_id, ingredient_id)
);

copy Users from '/app/postgres/project1/users.csv' (FORMAT CSV, DELIMITER (',') );
copy Recipes from '/app/postgres/project1/recipes.csv' (FORMAT CSV, DELIMITER (',') );
copy Orders from '/app/postgres/project1/orders.csv' (FORMAT CSV, DELIMITER (',') );
