CREATE OR REPLACE FUNCTION add_order(
    user_id integer,
    recipe_id integer)
RETURNS boolean AS $$
DECLARE
    time timestamp:=CURRENT_TIMESTAMP;
BEGIN
    INSERT INTO Orders(user_id, time, recipe_id)
    VALUES (user_id, time, recipe_id);
    RETURN true;
END;
$$ LANGUAGE plpgsql;