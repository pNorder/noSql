DROP FUNCTION add_order(integer, integer);
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
