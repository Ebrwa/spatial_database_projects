CREATE TABLE school_sites_final AS
SELECT s.*
FROM school_step2 AS s
WHERE EXISTS (
    SELECT 1
    FROM roads AS r
    WHERE ST_DWithin(s.geom, r.geom, 25)
);
