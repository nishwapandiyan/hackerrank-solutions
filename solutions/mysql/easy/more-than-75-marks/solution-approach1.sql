-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/more-than-75-marks/problem?isFullScreen=true
-- Problem     Higher Than 75 Marks
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-04-05, 09:08 a.m.
-- Technique   right-substring-sorting
-- Time        O(N log N)
-- Space       O(N)
-- Insight     The query filters records by a threshold and sorts the result set using the last three characters of the name as the primary key and the ID as the secondary key.
-- Interview   Before: "How would you sort by a suffix?" After: "I use the RIGHT(Name, 3) function to extract the suffix for the primary sort key, followed by ID for the secondary sort, resulting in O(N log N) time complexity due to the sorting operation."
-- Pitfalls    (1) Using SUBSTRING instead of RIGHT may cause errors if the name length is less than three characters.  (2) Failing to include the secondary sort by ID leads to incorrect ordering when suffixes match.  (3) Incorrectly using a WHERE clause on an aggregate result instead of the base table.
-- ──────────────────────────────────────────────────

SELECT Name
FROM STUDENTS
WHERE Marks > 75
ORDER BY RIGHT(Name, 3), ID ASC;
