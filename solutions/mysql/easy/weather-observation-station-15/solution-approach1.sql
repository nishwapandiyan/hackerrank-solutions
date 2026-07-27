-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-15/problem?isFullScreen=true
-- Problem     Weather Observation Station 15
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-07, 03:16 p.m.
-- ──────────────────────────────────────────────────

select round(long_w,4) from station WHERE lat_n = (select max(lat_n) from station where lat_n < 137.2345);
