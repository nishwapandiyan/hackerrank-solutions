-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-14/problem?isFullScreen=true
-- Problem     Weather Observation Station 14
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-07, 02:51 p.m.
-- ──────────────────────────────────────────────────

select round(max(lat_n),4) from station where lat_n < 137.2345;
