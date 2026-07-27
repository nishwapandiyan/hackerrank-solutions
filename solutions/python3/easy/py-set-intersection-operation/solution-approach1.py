# ──────────────────────────────────────────────────
# Link        https://www.hackerrank.com/challenges/py-set-intersection-operation/problem?isFullScreen=true
# Problem     Set .intersection() Operation
# Difficulty  Easy
# Subdomain   Sets
# Platform    HackerRank
# Language    python3
# Status      Accepted
# Submitted   2026-07-09, 11:17 p.m.
# Technique   set-intersection-operator
# Time        O(n + s)
# Space       O(n + s)
# Insight     The code calculates the intersection of two sets of student roll numbers using the bitwise AND operator and returns the count of common elements.
# Interview   Before: "I would iterate through both lists and compare every element." After: "Using Python sets allows for an O(n + s) intersection operation, which is more efficient than nested loops for finding common elements between two collections."
# Pitfalls    (1) Confusing the & operator with the .intersection() method, noting that & requires both operands to be sets while .intersection() accepts any iterable.  (2) Assuming the input size n or s is zero, which is handled correctly by the set constructor and intersection logic.
# ──────────────────────────────────────────────────

n = int(input())
l1 = set(list(map(int,input().split())))
s = int(input())
l2 = set(list(map(int,input().split())))
print(len(l1 & l2))

