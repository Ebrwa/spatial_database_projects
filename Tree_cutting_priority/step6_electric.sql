UPDATE cutting_grid_priority g
SET electric_score = 1
WHERE EXISTS (
    SELECT 1
    FROM electric_utilities u
    WHERE ST_DWithin(g.geom, u.geom, 50)
);
