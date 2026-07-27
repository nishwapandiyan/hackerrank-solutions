-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/asian-population/problem?isFullScreen=true
-- Problem     Population Census 
-- Difficulty  Easy
-- Subdomain   Basic Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-07, 05:45 p.m.
-- ──────────────────────────────────────────────────


SELECT sum(c.population)
FROM city AS c
JOIN country AS e
ON c.countrycode = e.code
WHERE e.continent = 'Asia';
