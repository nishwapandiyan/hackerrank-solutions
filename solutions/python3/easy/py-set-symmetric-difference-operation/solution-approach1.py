# ──────────────────────────────────────────────────
# Link        https://www.hackerrank.com/challenges/py-set-symmetric-difference-operation/problem?isFullScreen=true
# Problem     Set .symmetric_difference() Operation
# Difficulty  Easy
# Subdomain   Sets
# Platform    HackerRank
# Language    python3
# Status      Accepted
# Submitted   2026-07-09, 11:24 p.m.
# Technique   set-symmetric-difference-operator
# Time        O(N + M)
# Space       O(N + M)
# Insight     The symmetric difference operator computes the set of elements present in either set but not in both, effectively identifying the exclusive union of the two input sets.
# Interview   Before: "How would you find the count of students subscribed to exactly one newspaper?" After: "I used the symmetric difference operator, which runs in O(N + M) time, where N and M are the sizes of the two sets, to isolate unique elements efficiently."
# Pitfalls    (1) Confusing the symmetric difference operator ^ with the intersection operator & or union operator |.  (2) Assuming the input lists contain unique elements, though the set constructor handles duplicates automatically.  (3) Failing to account for the O(N + M) space complexity required to store the two sets in memory.
# ──────────────────────────────────────────────────

n = int(input())
l1 = set(list(map(int,input().split())))
s = int(input())
l2 = set(list(map(int,input().split())))
print(len(l1^l2))
