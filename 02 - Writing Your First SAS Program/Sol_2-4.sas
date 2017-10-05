/*
 * 2-4
What is wrong with this program?
001 data new-data; *(name has a dash);
002 infile prob4data.txt; *file name should be in quotes;
003 input x1 x2 *missing semicolon;
004 y1 = 3(x1) + 2(x2); *should read y1 = 3*x1 + 2*x2;
005 y2 = x1 / x2;
006 new_variable_from_x1_and_x2 = x1 + x2 – 37;
007 run;
Note: Line numbers are for reference only; they are not part of the program.
 */
