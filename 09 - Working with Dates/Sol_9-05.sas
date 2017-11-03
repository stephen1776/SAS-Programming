/*
 * 9-5
Using the Hosp data set, compute the frequencies for the days of the week, months of
the year, and year, corresponding to the admission dates (variable AdmitDate).
Supply a format for the days of the week and months of the year. Use PROC FREQ to
list these frequencies.
 */

libname learn '/folders/myfolders/SAS Programming/data/';
data freq;
   set learn.hosp(keep=AdmitDate);
   Day = weekday(AdmitDate);
   Month = month(AdmitDate);
   Year = year(AdmitDate);
run;

proc format;
   value days 1='Sun' 2='Mon' 3='Tue'
              4='Wed' 5='Thu' 6='Fri'
              7='Sat';
   value months 1='Jan' 2='Feb' 3='Mar'
                4='Apr' 5='May' 6='Jun'
                7='Jul' 8='Aug' 9='Sep'
                10='Oct' 11='Nov' 12='Dec';
run;

title "Frequencies for Hospital Admissions";
proc freq data=freq;
   tables Day Month Year / nocum nopercent;
   format Day days. Month months.;
run;
