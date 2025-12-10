CREATE OR REPLACE VIEW county_candidates AS
SELECT *
FROM counties
WHERE no_farms87 > 500
  AND age_18_64 >= 25000
  AND pop_sqmile < 150;
