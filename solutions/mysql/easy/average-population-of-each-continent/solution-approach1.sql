-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/average-population-of-each-continent/problem?isFullScreen=true
-- Problem     Average Population of Each Continent
-- Difficulty  Easy
-- Subdomain   Basic Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-08, 01:58 p.m.
-- Technique   inner-join-group-by-aggregation
-- Time        O(N + M)
-- Space       O(K)
-- Insight     The query performs an inner join between the city and country tables on matching codes, then groups the resulting rows by continent to calculate the floor of the average population.
-- Interview   Before: "How would you aggregate city data by continent?" After: "I join the tables on the country code, group by continent, and apply the floor function to the average population. This runs in O(N + M) time, where N and M are the sizes of the city and country tables."
-- Pitfalls    (1) Using round() instead of floor() violates the requirement to round down to the nearest integer.  (2) Failing to join on the correct matching key columns results in an incorrect mapping of cities to continents.  (3) Omitting the group by clause causes an aggregation error when selecting non-aggregated columns like continent.
-- ──────────────────────────────────────────────────

select e.continent,floor(avg(c.population)) from country as e join city as c ON
c.countrycode = e.code group by e.continent;
