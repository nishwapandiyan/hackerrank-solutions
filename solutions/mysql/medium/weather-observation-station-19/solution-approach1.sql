-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-19/problem?isFullScreen=true
-- Problem     Weather Observation Station 19
-- Difficulty  Medium
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-07, 03:59 p.m.
-- ──────────────────────────────────────────────────

SELECT round(sqrt((pow((max(lat_n) - min(lat_n)),2)) + (pow((max(long_w) - 
min(long_w)),2)) ),4) from station;
