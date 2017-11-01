/*
 * 
Use an iterative DO loop to plot the following equation:
y = 3*x2 – 5*x + 10
Use values of x from 0 to 10, with an increment of .10. Copy the GPLOT statements
from Problem 8 or use PROC PLOT to display the resulting equation.
 */

data p_7;
do x = 0 to 10 by .1;
y = 3*x**2 - 5*x + 10;
output;
end;
run;

proc plot data=p_7;
plot y * x;
run;