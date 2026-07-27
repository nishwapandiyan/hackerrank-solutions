-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-17/problem?isFullScreen=true
-- Problem     Weather Observation Station 17
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-07, 03:26 p.m.
-- ──────────────────────────────────────────────────

SELECT round(long_w,4) from station where lat_n = 
(SELECT min(lat_n) from station where lat_n > 38.7780);
