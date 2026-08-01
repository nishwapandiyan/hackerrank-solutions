-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-10/problem?isFullScreen=true
-- Problem     Weather Observation Station 10
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-05, 08:51 a.m.
-- Technique   distinct-right-function-filter
-- Time        O(N)
-- Space       O(N)
-- Insight     The query filters unique city names by checking that the last character is not contained within the set of lowercase vowels using the right function.
-- Interview   Before: "How would you filter unique records based on a character condition?" After: "I use DISTINCT to remove duplicates and the RIGHT function to isolate the last character, ensuring O(N) time complexity to scan the table for non-vowel endings."
-- Pitfalls    (1) Failing to use DISTINCT results in duplicate city names, violating the problem requirement.  (2) Using an incomplete vowel list in the NOT IN clause will incorrectly include cities ending in omitted vowels.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/
select distinct city from station
where right(city,1) not in ('a','e','i','o','u');
