UPDATE cutting_grid_priority g
SET pop_score = 1
WHERE EXISTS (
    SELECT 1
    FROM populated_areas p
    WHERE ST_DWithin(g.geom, p.geom, 200)
);
