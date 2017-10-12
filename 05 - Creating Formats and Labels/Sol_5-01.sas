/*
 * 5-01
Run the program here to create a temporary SAS data set called Voter:

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
run;
title "Frequencies from the Voter Questionaire";
proc freq data=voter;
tables Ques1-Ques4;
run;