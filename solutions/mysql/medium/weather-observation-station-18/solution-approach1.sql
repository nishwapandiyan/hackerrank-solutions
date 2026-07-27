-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-18/problem?isFullScreen=true
-- Problem     Weather Observation Station 18
-- Difficulty  Medium
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-07, 03:36 p.m.
-- ──────────────────────────────────────────────────

SELECT round((abs(min(lat_n) - max(lat_n)) + abs(min(long_w) - max(long_w))),4) from station;
