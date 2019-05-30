EXPLAIN ANALYZE SELECT * 
FROM Orders O
WHERE O.recipe_id = 0;

\echo "CREATING B-TREE INDEX ON recipe_id..."
CREATE INDEX recipe_id_index ON Orders (recipe_id);

EXPLAIN ANALYZE SELECT * 
FROM Orders O
WHERE O.recipe_id = 0;

