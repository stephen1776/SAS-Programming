/*
 * 3-9
Repeat Problem 7 using formatted input to read the data values instead of column
input.
 */

data cache;
infile '/folders/myfolders/SAS Programming/data/geocaching.txt' pad;
input @1 GeoName $20.
@21 LongDeg 2.
@23 LongMin 6.
@29 LatDeg 2.
@31 LatMin 6.;
run;
title "listing of cache";
proc print data=cache noobs;
run;