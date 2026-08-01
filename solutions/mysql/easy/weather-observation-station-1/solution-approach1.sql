-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-1/problem?isFullScreen=true
-- Problem     Weather Observation Station 1
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-04, 03:10 p.m.
-- Technique   basic-select-projection
-- Time        O(N)
-- Space       O(N)
-- Insight     The query performs a linear scan of the STATION table to project the specified columns for every row.
-- Interview   Before: "How do I retrieve specific columns from a table?" After: "Use the SELECT statement followed by the column names. This operation has O(N) time complexity as it processes every row in the STATION table to return the requested city and state data."
-- Pitfalls    (1) Selecting columns in the incorrect order relative to the problem requirements.  (2) Failing to include all requested columns in the SELECT clause.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/

SELECT city ,state FROM station;
