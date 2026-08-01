-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-6/problem?isFullScreen=true
-- Problem     Weather Observation Station 6
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-04, 04:37 p.m.
-- Technique   regex-like-pattern-matching
-- Time        O(N)
-- Space       O(N)
-- Insight     The query filters city names by checking the first character against a set of vowel patterns using the SQL LIKE operator and removes duplicates with the DISTINCT keyword.
-- Interview   Before: "How would you extract unique cities starting with vowels?" After: "I used the DISTINCT keyword to ensure uniqueness and a series of LIKE conditions to match the starting character, resulting in O(N) time complexity where N is the number of rows in the table."
-- Pitfalls    (1) Failing to use the DISTINCT keyword results in duplicate city names in the output.  (2) Using incorrect wildcard placement, such as '%a', would match cities ending in vowels instead of starting with them.  (3) Omitting one of the five vowels in the WHERE clause violates the requirement to include all cities starting with a, e, i, o, or u.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/

SELECT distinct city from station where city like 'a%' or city like 'e%' or city like 'i%' or city like 'o%' or city like 'u%';
