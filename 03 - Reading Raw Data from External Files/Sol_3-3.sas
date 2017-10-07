/*
 * 3-3
You are given a text file where dollar signs were used as delimiters. To indicate
missing values, two dollars signs were entered. Values in this file represent last
name, employee number, and annual salary.
Here is a listing of this file:
File company.txt
Using this data file as input, create a temporary SAS data set called Company with
the variables LastName (character), EmpNo (character), and Salary (numeric).
 */

data company;
infile '/folders/myfolders/SAS Programming/data/company.txt' dsd dlm='$';
input LastName$ EmpNo$ Salary;
format Salary dollar10.; 
run;
title "Listing of COMPANY";
proc print data=company noobs;
run;