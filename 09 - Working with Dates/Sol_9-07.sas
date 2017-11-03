/*
 * 9-7
Using the Hosp data set, list all the observations with admission dates (AdmitDate)
before July 15, 2002. Write your statement so that if there were any missing values
for AdmitDate, they are not included in this list.
 */

title "Admissions Dates before July 15, 2002";
proc print data=learn.hosp;
   where AdmitDate le '01Jul2002'd and 
      AdmitDate is not missing;
run;