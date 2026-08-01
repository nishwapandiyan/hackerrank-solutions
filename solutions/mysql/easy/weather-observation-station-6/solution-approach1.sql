-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-6/problem?isFullScreen=true
-- Problem     Weather Observation Station 6
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-04, 04:37 p.m.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/

SELECT distinct city from station where city like 'a%' or city like 'e%' or city like 'i%' or city like 'o%' or city like 'u%';
