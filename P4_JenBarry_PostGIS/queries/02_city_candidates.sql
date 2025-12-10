CREATE OR REPLACE VIEW city_candidates AS
SELECT c.*
FROM cities c
JOIN county_candidates cc
  ON ST_Within(c.geom, cc.geom)
WHERE c.crime_inde <= 0.02
  AND c.university = 1;
