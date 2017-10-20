/*
 * 7-3
Using the Sales data set, list the observations for employee numbers (EmpID) 9888
and 0177. Do this two ways, one using OR operators and the other using the IN
operator.
Note: EmpID is a character variable.
 */

/* Generated Code (IMPORT) */
/* Source File: Sales.xls */
/* Source Path: /folders/myfolders/SAS Programming/data */
/* Code generated on: 10/20/17, 2:52 PM */

%web_drop_table(WORK.SALES);


FILENAME REFFILE '/folders/myfolders/SAS Programming/data/Sales.xls';

PROC IMPORT DATAFILE=REFFILE
	DBMS=XLS
	OUT=WORK.SALES;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=WORK.SALES; RUN;


%web_open_table(WORK.SALES);



title "Employees with ID numbers (EmpID) 9888 and 0177";
proc print data=WORK.SALES;
where EmpID = '9888' or EmpID = '0177';
run;
proc print data=WORK.SALES;
where EmpID in ('9888' '0177');
run;