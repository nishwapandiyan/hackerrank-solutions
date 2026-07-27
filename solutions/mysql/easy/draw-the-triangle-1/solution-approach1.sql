-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/draw-the-triangle-1/problem?isFullScreen=true
-- Problem     Draw The Triangle 1
-- Difficulty  Easy
-- Subdomain   Alternative Queries
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-10, 02:57 p.m.
-- Technique   variable-decrement-repeat-pattern
-- Time        O(R)
-- Space       O(1)
-- Insight     The query utilizes a session variable initialized to 21 to decrement the repeat count for each row, effectively generating a descending pattern of asterisks.
-- Interview   Before: "How would you generate a triangle pattern using SQL?" After: "I used a session variable to decrement the count per row, achieving O(R) time complexity to print 20 rows of decreasing asterisks."
-- Pitfalls    (1) The use of information_schema.tables assumes the database contains at least 20 tables to satisfy the limit constraint.  (2) The repeat function requires a space character to match the exact pattern format specified in the problem statement.
-- ──────────────────────────────────────────────────

SELECT repeat("* ", @row:=@row-1)
from information_schema.tables,(SELECT @row := 21) as r limit 20;
