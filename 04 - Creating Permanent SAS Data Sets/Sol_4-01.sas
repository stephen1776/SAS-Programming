/*
 * 4-1
Run the program here to create a permanent SAS data set called Perm. You will
need to modify the program to specify a folder where you want to place this data set.
Run PROC CONTENTS on this data set and then use the SAS Explorer to
investigate the properties of this data set as well.
 */
libname learn '/folders/myfolders/SAS Programming/data_other';
data learn.perm;
input ID : $3. Gender : $1. DOB : mmddyy10.
Height Weight;
label DOB = 'Date of Birth'
Height = 'Height in inches'
Weight = 'Weight in pounds';
format DOB date9.;
datalines;
001 M 10/21/1946 68 150
002 F 5/26/1950 63 122
003 M 5/11/1981 72 175
004 M 7/4/1983 70 128
005 F 12/25/2005 30 40
;

title "Contents of the data set PERM";
proc contents data=learn.perm varnum;
run;
