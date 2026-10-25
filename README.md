# CoinFlip
Coin Flip Sequence Probability Calculator

Overview

This R script is a brute-force statistical simulation that calculates the probability of obtaining exactly 3 sequences (or "runs") when a fair coin is flipped 9 times.

A "sequence" or "run" is defined as a consecutive block of identical outcomes. For example:

H H H T T T H H H has 3 sequences (Heads, Tails, Heads).
H T H T H T H T H has 9 sequences.
H H H H H H H H H has 1 sequence.

Logic

1. Generate All Outcomes: 9 nested loops create all 512 (2^9) possible 9-flip combinations.
2. Count Sequences: An inner loop checks consecutive flips, counting how many times the outcome changes (e.g., from H to T).
3. Filter: The script tallies every combination that results in exactly 3 sequences.
4. Calculate Probability: It divides the successful combinations by the total 512 combinations to output the final result.
