UPDATE cutting_grid_priority g
SET mort_score = 1
WHERE EXISTS (
    SELECT 1
    FROM tree_mortality t
    WHERE ST_Intersects(g.geom, t.geom)
);
