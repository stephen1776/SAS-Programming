/*
 * 3-7
You have a text file called geocaching.txt with data values arranged as follows:
Variable Description StartingColumn EndingColumn DataType
Name 	Cache name 	 1 			 	20 			 Char
LongDeg Longitude degrees 21 22 Num
LongMin Longitude minutes 23 28 Num
LatDeg Latitude degrees 29 30 Num
LatMin Latitude minutes 31 36 Num
Here is a listing of the file:
File geocaching.txt
Higgensville Hike 4030.2937446.539
Really Roaring 4027.4047442.147
Cushetunk Climb 4037.0247448.014
Uplands Trek 4030.9907452.794
Create a temporary SAS data set called Cache using this data file. Use column input
to read the data values.
 */

data cache;
infile '/folders/myfolders/SAS Programming/data/geocaching.txt' pad;
input GeoName$ 1-20
LongDeg 21-22
LongMin 23-28
LatDeg 29-30
LatMin 31-36;
run;
title "listing of cache";
proc print data=cache noobs;
run;