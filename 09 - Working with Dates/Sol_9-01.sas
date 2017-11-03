/*
 * 9-1
You have several lines of data, consisting of a subject number and two dates (date of
birth and visit date). The subject starts in column 1 (and is 3 bytes long), the date of
birth starts in column 4 and is in the form mm/dd/yyyy, and the visit date starts in
column 14 and is in the form nnmmmyyyy (see sample lines below). Read the
following lines of data to create a temporary SAS data set called Dates. Format both
dates using the DATE9. format. Include the subject’s age at the time of the visit in
this data set.
00110/21/195011Nov2006
00201/02/195525May2005
00312/25/200525Dec2006
 */
data Dates;
   input @1  SUBJ  $3.
         @4  DOB   mmddyy10.
         @14 VISIT date9.;
   AGE = yrdif(DOB,VISIT,'ACTUAL');
   format DOB VISIT DATE9.;
datalines;
00110/21/195011Nov2006
00201/02/195525May2005
00312/25/200525Dec2006
;
title "Listing of DATES";
proc print data=Dates noobs;
run;