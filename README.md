# Subtle Floating-Point Comparison Bug in Julia

This repository demonstrates a common yet subtle bug in Julia related to floating-point number comparisons, specifically using the `==` operator. The `bug.jl` file contains the buggy code, while `bugSolution.jl` provides a corrected version.

**Bug Description:**
The original code compares floating point numbers directly to zero using `==`. This can lead to unexpected results due to the inherent imprecision of floating-point representation.  Very small values that should theoretically be zero might not be exactly zero due to rounding errors. This can cause incorrect branching in conditional statements.

**Solution:**
The solution demonstrates a better approach using tolerances when comparing floating-point numbers to zero to account for rounding errors.