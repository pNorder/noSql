CREATE OR REPLACE FUNCTION add_order(
    user_id integer,
    recipe_id integer)
RETURNS boolean AS $$
DECLARE
    time timestamp:=CURRENT_TIMESTAMP;
    ingredient_ids integer[];
    ingredient_count integer := 0;
    current_qty integer[];
    did_insert boolea := false;
    i integer :=0;
BEGIN
    Select count(*) into ingredient_count
    from CookedWith C
    where C.recipe_id = recipe_id;

    ingredient_ids:= ARRAY(
        SELECT ingredient_id
        FROM CookedWith C
        WHERE C.recipe_id = recipe_id;
    )

    <<getcurrentqty>>
    WHILE i > ingredient_count
    LOOP 
        

    END LOOP <<getcurrentqty>>;

        

    INSERT INTO Orders(user_id, time, recipe_id)
    VALUES (user_id, time, recipe_id);
    RETURN true;
END;
$$ LANGUAGE plpgsql;