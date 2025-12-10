CREATE OR REPLACE VIEW city_near_recareas AS
SELECT
    row_number() OVER () AS rid,
    c.*
FROM city_near_interstates c
JOIN recareas r
ON ST_DWithin(
        ST_Transform(c.geom, 32028),
        ST_Transform(r.geom, 32028),
        10 * 5280
    );
