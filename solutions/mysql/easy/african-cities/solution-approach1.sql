-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/african-cities/problem?isFullScreen=true
-- Problem     African Cities
-- Difficulty  Easy
-- Subdomain   Basic Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-08, 01:36 p.m.
-- Technique   inner-join-filter
-- Time        O(N + M)
-- Space       O(N + M)
-- Insight     The query performs an inner join on the matching country code columns to filter city records by the continent attribute of the associated country.
-- Interview   Before: "How do I retrieve city names based on a property in a related table?" After: "Use an INNER JOIN on the shared key columns and apply a WHERE clause to filter by continent, resulting in O(N + M) time complexity where N and M are the table sizes."
-- Pitfalls    (1) Failing to use the correct join condition between CITY.CountryCode and COUNTRY.Code.  (2) Misspelling the continent name 'Africa' which is required for the filter condition.
-- ──────────────────────────────────────────────────

select c.name from city as c join country as e on
c.countrycode = e.code where e.continent = 'Africa';
