
CREATE OR REPLACE RULE update_inventory AS ON INSERT TO Orders DO ALSO
(Update Ingredients SET quantity = quantity - amount FROM CookedWith
WHERE new.recipe_id = CookedWith.recipe_id AND Ingredients.ingredient_id = CookedWith.ingredient_id);



CREATE OR REPLACE FUNCTION add_order(
    user_id integer,
    recipe_id integer)
RETURNS TABLE (Q INT)
AS $$
BEGIN
RETURN QUERY
SELECT i.quantity FROM Ingredients i, CookedWith cw WHERE i.ingredient_id = cw.ingredient_id AND cw.recipe_id = recipe_id;
IF Q <= 0 THEN
RAISE EXCEPTION 'Not enough ingredient quantity for recipe --> %', recipe_id;
ELSE INSERT INTO Orders(user_id, time, recipe_id) VALUES (user_id, time, recipe_id);
END IF;
END;
$$ LANGUAGE 'plpgsql';
