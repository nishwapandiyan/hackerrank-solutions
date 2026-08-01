-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-11/problem?isFullScreen=true
-- Problem     Weather Observation Station 11
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-05, 08:54 a.m.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/
select distinct city from station 
where right(city,1) not in ('a','e','i','o','u') or
left(city,1) not in ('a','e','i','o','u'); 
