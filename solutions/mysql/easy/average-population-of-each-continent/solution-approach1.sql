-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/average-population-of-each-continent/problem?isFullScreen=true
-- Problem     Average Population of Each Continent
-- Difficulty  Easy
-- Subdomain   Basic Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-08, 01:58 p.m.
-- ──────────────────────────────────────────────────

select e.continent,floor(avg(c.population)) from country as e join city as c ON
c.countrycode = e.code group by e.continent;
