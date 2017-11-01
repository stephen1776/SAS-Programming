/*
 * 8-1
Run the program here to create a temporary SAS data set called Vitals:
data vitals;
input ID : #3.
Age
Pulse
SBP
DBP;
label SBP = "Systolic Blood Pressure"
DBP = "Diastolic Blood Pressure";
datalines;
001 23 68 120 80
002 55 72 188 96
003 78 82 200 100
004 18 58 110 70
005 43 52 120 82
006 37 74 150 98
007 . 82 140 100
;
Using this data set, create a new data set (NewVitals) with the following new
variables:
For subjects less than 50 years of age:
If Pulse is less than 70, set PulseGroup equal to Low;
otherwise, set PulseGroup equal to High.
If SBP is less than 130, set SBPGroup equal to Low;
otherwise, set SBPGroup equal to High.
For subjects greater than or equal to 50 years of age:
If Pulse is less than 74, set PulseGroup equal to Low;
otherwise, set PulseGroup equal to High.
If SBP is less than 140, set SBPGroup equal to Low;
otherwise, set SBPGroup equal to High.
You may assume there are no missing values for Pulse or SBP.
 */

data vitals;
input ID : $3.
Age
Pulse
SBP
DBP;
label SBP = "Systolic Blood Pressure"
DBP = "Diastolic Blood Pressure";
datalines;
001 23 68 120 80
002 55 72 188 96
003 78 82 200 100
004 18 58 110 70
005 43 52 120 82
006 37 74 150 98
007 . 82 140 100
;

data NewVitals;
set vitals;
if Age lt 50 and not missing(Age) then do;
	if Pulse lt 70 then PulseGroup = 'Low ';
	else PulseGroup = 'High';
	if SBP lt 140 then SBPGroup = 'Low ';
	else SBPGroup = 'High';
end;
else if Age ge 50 then do;
	if Pulse lt 74 then PulseGroup = 'Low';
	else PulseGroup = 'High';
	if SBP lt 140 then SBPGroup = 'Low';
	else SBPGroup = 'High';
end;
run;
title "Listing of NewVitals";
proc print data=NewVitals noobs;
run;