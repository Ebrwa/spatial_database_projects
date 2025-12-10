UPDATE cutting_grid_priority g
SET community_score = 1
WHERE EXISTS (
    SELECT 1
    FROM community_features c
    WHERE ST_DWithin(g.geom, c.geom, 200)
);
