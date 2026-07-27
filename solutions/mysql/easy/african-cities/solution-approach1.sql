-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/african-cities/problem?isFullScreen=true
-- Problem     African Cities
-- Difficulty  Easy
-- Subdomain   Basic Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-08, 01:36 p.m.
-- ──────────────────────────────────────────────────

select c.name from city as c join country as e on
c.countrycode = e.code where e.continent = 'Africa';
