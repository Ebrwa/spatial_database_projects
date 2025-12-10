CREATE OR REPLACE VIEW city_near_interstates AS
SELECT
    row_number() OVER () AS rid,
    c.*
FROM city_candidates c
JOIN interstates i
ON ST_DWithin(
        ST_Transform(c.geom, 32028),
        ST_Transform(i.geom, 32028),
        20 * 5280
    );
