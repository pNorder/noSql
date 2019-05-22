
CREATE OR REPLACE RULE update_inventory AS ON INSERT TO Orders DO ALSO
(Update Ingredients SET quantity = quantity - amount FROM CookedWith
WHERE new.recipe_id = CookedWith.recipe_id AND Ingredients.ingredient_id = CookedWith.ingredient_id);

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
BEGIN
    SELECT COUNT(*) INTO startcount FROM Orders O WHERE O.user_id = user_id_param;
    FOR temprow IN
        SELECT * FROM Ingredients I, cookedwith CW WHERE  CW.recipe_id = recipe_id_param AND I.ingredient_id = CW.ingredient_id
        LOOP 
            IF temprow.quantity <= 0 THEN
                RAISE NOTICE 'Not Sufficient Quantity for Order';
                inserted:=false;
                RETURN inserted;            
            END IF;
        END LOOP;
    INSERT INTO Orders(user_id, time, recipe_id) 
        VALUES (user_id_param, clock_timestamp(), recipe_id_param);
    inserted:= true;
    SELECT COUNT(*) INTO endcount FROM Orders O WHERE O.user_id = user_id_param;
    RAISE NOTICE 'COUNT BEFORE INSERT: % | COUNT AFTER INSERT: %', startcount, endcount;
    RETURN inserted;
END;
$$ LANGUAGE 'plpgsql';
