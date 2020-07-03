Spline Interpolation Application: Curve Sections Approximation
===============

Objective
----------
Using a Natural Cubic Spline and a Clamped Cubic Spline to construct a third degree interpolating polynomial to draw sections of a curve.

Algorithm
-----
See funtions implemented in the CCSpline.m and NCSpline.m

Results & Observations
-----
After running the MATLAB code, it appeares that, even though, the resulting endpoints for the Clamped Cubic Spline interpolation plot is more accurate near the actual endpoints of each one of the three parts, the plot created from the Natural Cubic Spline interpolation seems to be a better fit overall.
w
Note that the final result is, however, unexpected because the Clamped Cubic Spline interpolation was provided with more data than the Natural Cubic Spline interpolation (data from the first derivative at the endpoints). 
