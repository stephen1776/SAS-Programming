/*
 * 5-3
Run the following program to create a SAS data set called Colors (see Chapter 21 for
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
title "Frequencies of the Color Groups";
proc freq data=colors;
tables color / nocum missing;
format color $color.;
run;