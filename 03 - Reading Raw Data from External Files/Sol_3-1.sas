/*
 * 3-1
You have a text file called scores.txt containing information on gender (M or F)
and four test scores (English, history, math, and science). Each data value is
separated from the others by one or more blanks. 

a. Write a DATA step to read in these values. Choose your own variable names. Be
sure that the value for Gender is stored in 1 byte and that the four test scores are
numeric.
b. Include an assignment statement computing the average of the four test scores.
c. Write the appropriate PROC PRINT statements to list the contents of this data
set.
 */

data scores;
infile '/folders/myfolders/SAS Programming/data/scores.txt';
input Gender : $1.
English
History
Math
Science;
Average = (English + History + Math + Science) / 4;
run;
title "Test Scores";
proc print data=scores noobs;
run;