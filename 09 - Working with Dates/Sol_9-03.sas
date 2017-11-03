/*
 * 9-3
You have several dates that range from 1910 to 2006 in a raw data file.
Unfortunately, all of the dates only have two-digit years. Read these dates and be sure
that the resulting data set (call it Dates1910_2006) are in this range.
Hint: Remember the system option YEARCUTOFF.
Here are the values (all starting in column 1).
01/01/11
02/23/05
03/15/15
05/09/06
 */

options yearcutoff=1910;
data Dates1910_2006;
   input @1 Date mmddyy8.;
   format Date date9.;
datalines;
01/01/11
02/23/05
03/15/15
05/09/06
;
options yearcutoff=1920;
title "Listing of Dates1910_2006";
proc print data=Dates1910_2006 noobs;
run;
