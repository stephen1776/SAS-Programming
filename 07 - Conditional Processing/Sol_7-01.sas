/*
 * 7-1
Run the program here to create a temporary SAS data set called School:
data school;
input Age Quiz : $1. Midterm Final;
* Add you statements here ;
datalines;
12 A 92 95
12 B 88 88
13 C 78 75
13 A 92 93
12 F 55 62
13 B 88 82
;
Using IF and ELSE IF statements, compute two new variables as follows: Grade
(numeric), with a value of 6 if Age is 12 and a value of 8 if Age is 13.
The quiz grades have numerical equivalents as follows: A = 95, B = 85, C = 75,
D = 70, and F = 65. Using this information, compute a course grade (Course) as a
weighted average of the Quiz (20%), Midterm (30%) and Final (50%).
 */

data school;
input Age Quiz : $1. Midterm Final;
if Age = 12 then Grade = 6;
else if Age = 13 then Grade = 8;
if Quiz = 'A' then QuizGrade = 95;
else if Quiz = 'B' then QuizGrade = 85;
else if Quiz = 'C' then QuizGrade = 75;
else if Quiz = 'D' then QuizGrade = 70;
else if Quiz = 'F' then QuizGrade = 65;
CourseGrade = 0.2*QuizGrade + 0.3*Midterm + 0.5*Final;
datalines;
12 A 92 95
12 B 88 88
13 C 78 75
13 A 92 93
12 F 55 62
13 B 88 82
;
title "Course Grades";
proc print data=school noobs;
run;