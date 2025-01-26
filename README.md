# Unhandled Errors in MATLAB Function

This repository demonstrates an example of a MATLAB function with several potential error scenarios that are not handled gracefully.  The original function (`bug.m`) lacks proper error handling for negative input, non-numeric input, and potential integer overflow.

The improved version (`bugSolution.m`) includes comprehensive error handling using `try-catch` blocks to gracefully manage these situations and provide informative error messages to the user.

This example highlights the importance of robust error handling in MATLAB to prevent unexpected program termination and to make debugging easier.