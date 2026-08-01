-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-4/problem?isFullScreen=true
-- Problem     Weather Observation Station 4
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-04, 03:16 p.m.
-- Technique   aggregate-difference-query
-- Time        O(N)
-- Space       O(1)
-- Insight     The query calculates the difference between the total count of city entries and the count of unique city entries by subtracting the results of two aggregate functions.
-- Interview   Before: "How would you find the number of duplicate city names?" After: "I would subtract the count of distinct cities from the total count of cities, which runs in O(N) time as it requires a full scan of the STATION table."
-- Pitfalls    (1) Failing to account for NULL values in the CITY column, as count(city) ignores NULLs while count(distinct city) also excludes them.  (2) Assuming the result is always positive when the table could be empty, resulting in a NULL difference.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/
select count(city) - count(distinct city) from station;
