-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-7/problem?isFullScreen=true
-- Problem     Weather Observation Station 7
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-04, 04:38 p.m.
-- Technique   regex-like-pattern-matching
-- Time        O(N)
-- Space       O(N)
-- Insight     The query filters unique city names by checking if the final character matches any of the five specified vowels using the SQL LIKE operator.
-- Interview   Before: "How do you filter strings ending in specific characters?" After: "I use the LIKE operator with wildcard patterns to identify suffixes. This approach runs in O(N) time complexity, where N is the number of rows in the STATION table, while ensuring uniqueness with the DISTINCT keyword."
-- Pitfalls    (1) Failing to use the DISTINCT keyword results in duplicate city names, violating the problem requirement.  (2) Using incorrect wildcard placement, such as 'a%', would match cities starting with vowels instead of ending with them.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/SELECT distinct city from station 
where city like '%a' or
city like '%e' or
city like '%i' or
city like '%o' or
city like '%u';
