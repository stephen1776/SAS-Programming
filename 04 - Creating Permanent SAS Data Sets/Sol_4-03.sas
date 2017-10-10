/*
 * 4-3
Run this program to create a permanent SAS data set called Survey2007. Close your
SAS session, open up a new session, and write the statements necessary to compute
the mean age.
 */
libname perm '/folders/myfolders/SAS Programming/data_other';
data perm.survey2007;
input Age Gender $ (Ques1-Ques5)($1.);
datalines;
23 M 15243
30 F 11123
42 M 23555
48 F 55541
55 F 42232
62 F 33333
68 M 44122
;
/* close then reopen session */
libname perm '/folders/myfolders/SAS Programming/data_other';
title "Computing the Mean of Age";
proc means data=perm.survey2007;
var Age;
run;

