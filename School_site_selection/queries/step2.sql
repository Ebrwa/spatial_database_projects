CREATE TABLE school_step2 AS
SELECT s.*
FROM school_step1 AS s
WHERE NOT EXISTS (
    SELECT 1
    FROM buildings AS b
    WHERE ST_Intersects(s.geom, b.geom)
);
