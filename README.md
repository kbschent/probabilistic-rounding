# probabilistic-rounding
Probabilistic rounding method with weights determined by the value to the right of the rounding position.

Examples:
- probRound(3.65) returns 4 (65% of the time) or 3 (35% of time)
- probRound(2.11) returns 2 (89% of the time) or 3 (11% of time)
- probRound(5.6789, position = 1) returns 5.7 (78.9%) or 5.6 (21.1%)
- probRound(123.45, position = -1) returns 120 (65.5%) or 130 (34.5%)
