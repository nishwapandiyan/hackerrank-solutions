-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-12/problem?isFullScreen=true
-- Problem     Weather Observation Station 12
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-05, 08:56 a.m.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/

select distinct city from station WHERE
left(city,1) not in ('a','e','i','o','u') AND
right(city,1) not in ('a','e','i','o','u');
