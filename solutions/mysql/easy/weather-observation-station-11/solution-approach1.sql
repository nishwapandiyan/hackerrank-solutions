-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-11/problem?isFullScreen=true
-- Problem     Weather Observation Station 11
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-05, 08:54 a.m.
-- Technique   regex-alternative-string-functions
-- Time        O(N)
-- Space       O(N)
-- Insight     The query filters unique city names by checking if the first or last character is absent from the set of vowels using string manipulation functions.
-- Interview   Before: "I would use a regex pattern to match the start and end characters." After: "Using LEFT and RIGHT functions is more performant for this O(N) operation, ensuring we correctly handle the 'or' condition for non-vowel boundaries while maintaining distinct results."
-- Pitfalls    (1) Failing to use DISTINCT results in duplicate city names being returned.  (2) Using AND instead of OR incorrectly restricts the result set to cities that satisfy both conditions simultaneously.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/
select distinct city from station 
where right(city,1) not in ('a','e','i','o','u') or
left(city,1) not in ('a','e','i','o','u'); 
