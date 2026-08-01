# ──────────────────────────────────────────────────
# Link        https://www.hackerrank.com/challenges/python-tuples/problem?isFullScreen=true
# Problem     Tuples 
# Difficulty  Easy
# Subdomain   Basic Data Types
# Platform    HackerRank
# Language    python
# Status      Accepted
# Submitted   2026-03-10, 11:08 p.m.
# Technique   tuple-mapping-hash
# Time        O(n)
# Space       O(n)
# Insight     The implementation converts a space-separated string of integers into a tuple and computes its hash value using the built-in hash function.
# Interview   Before: "How would you compute the hash of a sequence of integers?" After: "I would map the input strings to integers, cast them into a tuple, and call hash(). This approach runs in O(n) time and O(n) space, where n is the number of elements in the tuple."
# Pitfalls    (1) Using input() instead of raw_input() in Python 2 environments can cause unexpected behavior with input evaluation.  (2) Failing to map the split string elements to integers results in a tuple of strings rather than integers, producing an incorrect hash.
# ──────────────────────────────────────────────────

if __name__ == '__main__':
   n = int(raw_input())
   integer_list = tuple(map(int, raw_input().split()))
   print hash(integer_list)
