-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/draw-the-triangle-2/problem?isFullScreen=true
-- Problem     Draw The Triangle 2
-- Difficulty  Easy
-- Subdomain   Alternative Queries
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-10, 03:02 p.m.
-- Technique   session-variable-row-counter
-- Time        O(N)
-- Space       O(1)
-- Insight     The query utilizes a session variable to increment a row counter for each iteration, generating a string of asterisks that grows in length by one for each of the twenty rows.
-- Interview   Before: "How would you generate a triangle pattern using SQL?" After: "I used a session variable to track the row index and the REPEAT function to print the pattern in O(N) time, where N is 20, ensuring the output matches the required row count exactly."
-- Pitfalls    (1) Failing to initialize the session variable @row to 0 within the query scope leads to null results.  (2) Using a table with fewer than 20 rows in information_schema.tables will truncate the triangle prematurely.  (3) Miscalculating the repeat count by using @row before the increment operation results in an incorrect triangle height.
-- ──────────────────────────────────────────────────

select repeat("* ",@row := @row+1)
FROM information_schema.tables ,(select @row := 0) as r limit 20;
