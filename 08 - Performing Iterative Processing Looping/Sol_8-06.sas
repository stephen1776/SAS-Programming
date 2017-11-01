/*
 * 8-6
Repeat Problem 5, except have the range of N go from 5 to 100 by 5.
 */



data Logs;
do N = 5 to 100 by 5;
LogN = log(N);
output;
end;
run;
title "Listing of Logs";
proc print data=Logs noobs;
run;