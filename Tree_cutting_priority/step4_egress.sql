UPDATE cutting_grid_priority g
SET egress_score = 1
WHERE EXISTS (
    SELECT 1
    FROM egress_routes e
    WHERE ST_DWithin(g.geom, e.geom, 100)
);
