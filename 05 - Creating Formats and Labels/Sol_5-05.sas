/*
 * 5-5
Write the necessary statements to make three permanent formats in a library of your
choice. Use the FMTLIB option to list each of these formats. The formats are defined
as follows:
YESNO 1 = Yes, 0 = No
$YESNO Y = Yes, N = No
$Gender M = Male, F = Female
age20yr low-20 = 1, 21-40 = 2, 41-60 = 3, 61-80 = 4,
81-high = 5
 */
libname learnSAS '/folders/myfolders/SAS Programming/data_other';
options fmtsearch=(learnSAS);
proc format library=learnSAS fmtlib;
value yesno 1='Yes' 0='No';
value $yesno 'Y'='Yes' 'N'='No';
value $gender 'M'='Male' 'F'='Female';
value age20yr
low-20 = '1'
21-40 = '2'
41-60 = '3'
61-80 = '4'
81-high = '5';
run;