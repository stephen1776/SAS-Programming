/* Chap 5 Probs
1. Run the program here to create a temporary SAS data set called Voter:
data voter;
input Age Party : $1. (Ques1-Ques4)($1. + 1);
datalines;
23 D 1 1 2 2
45 R 5 5 4 1
67 D 2 4 3 3
39 R 4 4 4 4
19 D 2 1 2 1
75 D 3 3 2 3
57 R 4 3 4 4
;
Add formats for Age (0–30, 31–50, 51–70, 71+), Party (D = Democrat, R =
Republican), and Ques1–Ques4 (1=Strongly Disagree, 2=Disagree, 3=No
Opinion, 4=Agree, 5=Strongly Agree). In addition, label Ques1–Ques4 as
follows:
Ques1 The president is doing a good job
Ques2 Congress is doing a good job
Ques3 Taxes are too high
Ques4 Government should cut spending
Note: Use PROC PRINT to list the observations in this data set and PROC FREQ to
list frequencies for the four questions. (The default action of PROC PRINT
is to head each column with a variable name, not the label. To use labels as
column headings, use the LABEL option with PROC PRINT.)
*/
*5-1;
proc format;
value agegrp 0 - 30 = '0 to 30'
31 - 50 = '31 to 50'
51 - 70 = '50 to 70'
71 - high = '71 and older';
value $party 'D' = 'Democrat'
'R' = 'Republican';
value $likert '1' = 'Strongly Disagree'
'2' = 'Disagree'
'3' = 'No Opinion'
'4' = 'Agree'
'5' = 'Strongly Agree';
run;
data voter;
input Age Party : $1. (Ques1-Ques4)($1. + 1);
label Ques1 = 'The president is doing a good job'
Ques2 = 'Congress is doing a good job'
Ques3 = 'Taxes are too high'
Ques4 = 'Government should cut spending';
format Age agegrp.
Party $party.
Ques1-Ques4 $likert.;
datalines;
23 D 1 1 2 2
45 R 5 5 4 1
67 D 2 4 3 3
39 R 4 4 4 4
19 D 2 1 2 1
75 D 3 3 2 3
57 R 4 3 4 4
;
title "Listing of Voter";
proc print data=voter;
***Add the option LABEL if you want to use the
labels as column headings;
run;
title "Frequencies on the Four Questions";
proc freq data=voter;
tables Ques1-Ques4;
run;

/* 3. Run the following program to create a SAS data set called Colors (see Chapter 21 for
a discussion of the double at signs [@@] in the INPUT statement):
data colors;
input Color : $1. @@;
datalines;
R R B G Y Y . . B G R B G Y P O O V V B
;
Use a format to group the colors as follows:
R, B, G = Group 1
Y, O = Group 2
Missing = Not Given
All others = Group 3
Use PROC FREQ to list the frequencies of the color groups.
*/
*5-3;
data colors;
input Color : $1. @@;
datalines;
R R B G Y Y . . B G R B G Y P O O V V B
;
proc format;
value $color 'R','B','G' = 'Group 1'
'Y','O' = 'Group 2'
' ' = 'Not Given'
Other = 'Group 3';
run;
title "Color Frequencies (Grouped)";
proc freq data=colors;
tables color / nocum missing;
*The MISSING option places the frequency
of missing values in the body of the
table and causes the percentages to be
computed on the number of observations,
missing or non-missing;
format color $color.;
run;

/* 5. Write the necessary statements to make three permanent formats in a library of your
choice. Use the FMTLIB option to list each of these formats. The formats are defined
as follows:
YESNO 1 = Yes, 0 = No
$YESNO Y = Yes, N = No
$Gender M = Male, F = Female
age20yr low-20 = 1, 21-40 = 2, 41-60 = 3, 61-80 = 4,
81-high = 5
*/
*5-5;
libname learn '/folders/myfolders/Cody/Learning/';
options fmtsearch=(learn); * for different os;
proc format library=learn fmtlib;
value yesno 1='Yes' 2='No';
value $yesno 'Y'='Yes' 'N'='No';
value $gender 'M'='Male' 'F'='Female';
value age20yr
low-20 = '1'
21-40 = '2'
41-60 = '3'
61-80 = '4'
81-high = '5';
run;