/*
 * 3-11
You have a CSV file called employee.csv. This file contains the following
information:
Variable Description Desired Informat
ID Employee ID $3.
Name Employee name $20.
Depart Department $8.
DateHire Hire date MMDDYY10.
Salary Yearly salary DOLLAR8.
Use list input to read data from this file. You will need an informat to read most of
these values correctly (i.e., DateHire needs a date informat). You can do this in either
of two ways. First is to include an INFORMAT statement to associate each variable
with the appropriate informat. The other is to use the colon modifier and supply the
informats directly in the INPUT statement. Create a temporary SAS data set
(Employ) from this data file. Use PROC PRINT to list the observations in your data
set and the appropriate procedure to compute frequencies for the variable Depart.
A listing of the raw data file is:
File employee.csv
123,"Harold Wilson",Acct,01/15/1989,$78,123.
128,"Julia Child",Food,08/29/1988,$89,123
007,"James Bond",Security,02/01/2000,$82,100
828,"Roger Doger",Acct,08/15/1999,$39,100
900,"Earl Davenport",Food,09/09/1989,$45,399
906,"James Swindler",Acct,12/21/1978,$78,200
 */

data employees;
infile '/folders/myfolders/SAS Programming/data/employee.csv' dsd missover;
informat ID $3. Name $20. Depart $8.
DateHire mmddyy10. Salary dollar8.;
input ID Name Depart DateHire Salary;
format DateHire date9.;
run;
title "listing of employees";
proc print data=employees noobs;
run;





