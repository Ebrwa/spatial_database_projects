UPDATE cutting_grid_priority
SET priority = mort_score
              + community_score
              + egress_score
              + pop_score
              + electric_score;
