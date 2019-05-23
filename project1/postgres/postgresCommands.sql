DROP DATABASE IF EXISTS bobspizza;
CREATE DATABASE bobspizza;

\c bobspizza
CREATE Table Users (
user_id integer not null,
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
recipe_id integer not null,
name TEXT NOT NULL,
description TEXT NOT NULL,
cooking_instruction TEXT NOT NULL,
PRIMARY KEY(recipe_id)
);

CREATE TABLE Ingredients(
ingredient_id integer not null,
name TEXT NOT NULL,
description TEXT NOT NULL,
quantity integer NOT NULL,
PRIMARY KEY (ingredient_id)
);

CREATE TABLE Orders(
user_id integer not null REFERENCES Users,
time TIMESTAMP NOT NULL,
recipe_id integer not null REFERENCES Recipes,
PRIMARY KEY (user_id, time)
);

CREATE TABLE CookedWith (
    recipe_id integer not null REFERENCES Recipes,
    ingredient_id integer not null REFERENCES Ingredients,
    quantity INTEGER,
    PRIMARY KEY (recipe_id, ingredient_id)
);

copy Users from '/app/postgres/project1/postgres/users.csv' (FORMAT CSV, DELIMITER (',') );
copy Recipes from '/app/postgres/project1/postgres/recipes.csv' (FORMAT CSV, DELIMITER (',') );
copy Ingredients from '/app/postgres/project1/postgres/ingredients.csv' (FORMAT CSV, DELIMITER(',') );
copy Orders from '/app/postgres/project1/postgres/orders.csv' (FORMAT CSV, DELIMITER (',') );
copy CookedWith from '/app/postgres/project1/postgres/cookedwith.csv' (FORMAT CSV, DELIMITER (',') );
----------------------------------------------------------------------------------------------------
DROP FUNCTION IF EXISTS add_order(integer, integer);
CREATE OR REPLACE FUNCTION add_order(
    user_id_param integer,
    recipe_id_param integer)
RETURNS BOOLEAN
AS $$
DECLARE
    temprow ingredients%rowtype;
    startcount integer;
    endcount integer;
    inserted boolean:= false;
    quantneeded integer;
    newquant integer;
BEGIN
    SELECT COUNT(*) INTO startcount FROM Orders O WHERE O.user_id = user_id_param;
    --This loop checks to see if there is necessary quantity of ingredients
    FOR temprow IN
        SELECT * FROM Ingredients I, cookedwith CW WHERE  CW.recipe_id = recipe_id_param AND I.ingredient_id = CW.ingredient_id
        LOOP 
            SELECT CW.quantity INTO quantneeded FROM cookedwith CW WHERE CW.recipe_id = recipe_id_param AND temprow.ingredient_id = CW.ingredient_id;
            IF temprow.quantity - quantneeded <= 0 THEN
                RAISE NOTICE 'Not Sufficient Quantity of % for Order', temprow.name;
                inserted:=false;
                RETURN inserted;            
            END IF;
        END LOOP;

    --This loop changes update the ingredients
    FOR temprow IN
        SELECT * FROM Ingredients I, cookedwith CW WHERE  CW.recipe_id = recipe_id_param AND I.ingredient_id = CW.ingredient_id
        LOOP 
            SELECT CW.quantity INTO quantneeded FROM cookedwith CW WHERE CW.recipe_id = recipe_id_param AND temprow.ingredient_id = CW.ingredient_id;
            newquant:= temprow.quantity - quantneeded;
            UPDATE Ingredients SET quantity = newquant WHERE ingredient_id = temprow.ingredient_id;
        END LOOP;
    INSERT INTO Orders(user_id, time, recipe_id) 
        VALUES (user_id_param, clock_timestamp(), recipe_id_param);
    inserted:= true;
    SELECT COUNT(*) INTO endcount FROM Orders O WHERE O.user_id = user_id_param;
    RAISE NOTICE 'COUNT BEFORE INSERT: % | COUNT AFTER INSERT: %', startcount, endcount;
    RETURN inserted;
END;
$$ LANGUAGE 'plpgsql';
----------------------------------------------------------------------------------------------------
EXPLAIN ANALYZE SELECT * 
FROM Orders O
WHERE O.recipe_id = 0;

\echo "CREATING B-TREE INDEX ON recipe_id..."
CREATE INDEX recipe_id_index ON Orders (recipe_id);

EXPLAIN ANALYZE SELECT * 
FROM Orders O
WHERE O.recipe_id = 0;
---------------------------------
