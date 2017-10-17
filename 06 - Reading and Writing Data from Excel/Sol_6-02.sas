/*
 * 6-2
Run the following program to create a CSV file. Substitute a folder of your choice
for the one specified in the program:
data soccer;
input Team : $20. Wins Losses;
datalines;
Readington 20 3
Raritan 10 10
Branchburg 3 18
Somerville 5 18
;
options nodate nonumber;
title;
ods listing close;
ods csv file='c:\books\learning\soccer.csv';
proc print data=soccer noobs;
run;
ods csv close;
ods listing;
Open Excel on your computer and open the CSV file (you will have to change the
file type to .csv).
Save this as a spreadsheet using the File Save As pull down menu and naming the
file soccer.xls.
Now, use the SAS IMPORT wizard to convert this spreadsheet into a permanent SAS
data set called Soccer in a folder of your choice.
 */

data soccer;
input Team : $20. Wins Losses;
datalines;
Readington 20 3
Raritan 10 10
Branchburg 3 18
Somerville 5 18
;
options nodate nonumber;
ods listing close;
ods csv file='/folders/myfolders/SAS Programming/data_other/soccer.csv';
proc print data=soccer noobs;
run;
ods csv close;
ods listing;
















