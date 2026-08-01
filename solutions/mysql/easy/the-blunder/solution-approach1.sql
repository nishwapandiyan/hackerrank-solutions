-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/the-blunder/problem?isFullScreen=true
-- Problem     The Blunder
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-07, 02:11 p.m.
-- Technique   string-replacement-aggregation
-- Time        O(N)
-- Space       O(1)
-- Insight     The query calculates the difference between the actual average salary and the average salary computed after removing all '0' characters from the salary values, rounding the final result up to the nearest integer.
-- Interview   Before: "I would iterate through the table and manually strip zeros." After: "Using REPLACE and AVG in a single pass provides an O(N) solution that handles the zero-removal requirement efficiently while ensuring the final result is rounded up as specified."
-- Pitfalls    (1) Failing to use the CEIL function results in an incorrect integer value when the difference is not a whole number.  (2) Using the wrong order of subtraction (miscalculated - actual) instead of (actual - miscalculated) violates the problem requirement.  (3) Assuming REPLACE treats the salary as a number rather than a string can lead to unexpected behavior if the database engine does not implicitly cast types.
-- ──────────────────────────────────────────────────

select ceil(avg(salary) - avg(replace(salary,'0',''))) from employees;
