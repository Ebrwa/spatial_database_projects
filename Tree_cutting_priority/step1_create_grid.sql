CREATE TABLE cutting_grid_priority AS
SELECT
    gid,
    geom
FROM cutting_grid;

ALTER TABLE cutting_grid_priority
    ADD COLUMN mort_score      integer DEFAULT 0,
    ADD COLUMN community_score integer DEFAULT 0,
    ADD COLUMN egress_score    integer DEFAULT 0,
    ADD COLUMN pop_score       integer DEFAULT 0,
    ADD COLUMN electric_score  integer DEFAULT 0,
    ADD COLUMN priority        integer DEFAULT 0;
