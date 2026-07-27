-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-16/problem?isFullScreen=true
-- Problem     Weather Observation Station 16
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-07, 03:22 p.m.
-- ──────────────────────────────────────────────────

SELECT round(min(lat_n),4) from station where lat_n > 38.7780;
