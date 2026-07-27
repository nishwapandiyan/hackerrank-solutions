-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/asian-population/problem?isFullScreen=true
-- Problem     Population Census 
-- Difficulty  Easy
-- Subdomain   Basic Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-07, 05:45 p.m.
-- Technique   inner-join-aggregation
-- Time        O(N + M)
-- Space       O(1)
-- Insight     The query performs an inner join on matching country codes and aggregates the population column for all rows where the continent attribute equals 'Asia'.
-- Interview   Before: "How would you calculate the total population for a specific continent across two related tables?" After: "I would use an INNER JOIN on the shared country code key and apply a SUM aggregation with a WHERE filter, resulting in O(N + M) time complexity where N and M are table sizes."
-- Pitfalls    (1) Failing to use an inner join results in missing records if the country code does not exist in the country table.  (2) Using an incorrect column name for the join condition violates the requirement that CITY.CountryCode and COUNTRY.Code are the matching key columns.
-- ──────────────────────────────────────────────────


SELECT sum(c.population)
FROM city AS c
JOIN country AS e
ON c.countrycode = e.code
WHERE e.continent = 'Asia';
