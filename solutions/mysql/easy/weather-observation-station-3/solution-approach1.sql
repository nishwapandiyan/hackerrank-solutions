-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-3/problem?isFullScreen=true
-- Problem     Weather Observation Station 3
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-04, 03:13 p.m.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/
SELECT distinct city from station where mod(id,2)= 0;
