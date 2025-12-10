CREATE TABLE school_step1 AS
SELECT *
FROM landuse
WHERE type IN ('Un-Used', 'Agricultural Areas', 'Commercial Lands')
  AND ST_Area(geom) >= 5000;
