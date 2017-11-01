/*
 * 8-5
Create and print a data set with variables N and LogN, where LogN is the natural log
of N (the function is LOG). Use a DO loop to create a table showing values of N and
LogN for values of N going from 1 to 20.
 */


data Logs;
do N = 1 to 20;
LogN = log(N);
output;
end;
run;
title "Listing of Logs";
proc print data=Logs noobs;
run;