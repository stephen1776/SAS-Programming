/*
 * 7-5
Starting with the Blood data set, create a new, temporary SAS data set containing
all the variables in Blood plus a new variable called CholGroup. Define this new
variable as follows:
 CholGroup Chol
 Low Low – 110
 Medium 111 – 140
 High 141 – High
Use a SELECT statement to do this.
 */


/* Generated Code (IMPORT) */
/* Source File: blood.txt */
/* Source Path: /folders/myfolders/SAS Programming/data */
/* Code generated on: 10/20/17, 2:58 PM */

%web_drop_table(WORK.BLOOD);


FILENAME REFFILE '/folders/myfolders/SAS Programming/data/blood.txt';

PROC IMPORT DATAFILE=REFFILE
	DBMS=DLM
	OUT=WORK.BLOOD;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=WORK.BLOOD; RUN;


%web_open_table(WORK.BLOOD);

data WORK.BLOOD;
set WORK.BLOOD;
length CholGroup$ 6;
select;
when (missing(Chol)) CholGroup = ' ';
when (Chol le 110) CholGroup = 'Low';
when (Chol le 140) CholGroup = 'Medium';
otherwise CholGroup = 'High';
end;
run;
title "BLOOD Data";
proc print data=WORK.BLOOD noobs;
run;