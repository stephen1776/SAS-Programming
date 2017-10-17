/*
 * 6-1
Download the spreadsheet drugtest.xls from the SAS Web site. Use the SAS
Explorer to convert this to a temporary SAS data set called Drugtest. Use PROC
PRINT to list the observations in this data set.
 */

/* Generated Code (IMPORT) */
/* Source File: drugtest.xls */
/* Source Path: /folders/myfolders/SAS Programming/data */
/* Code generated on: 10/17/17, 4:08 PM */

%web_drop_table(WORK.drugtest);


FILENAME REFFILE '/folders/myfolders/SAS Programming/data/drugtest.xls';

PROC IMPORT DATAFILE=REFFILE
	DBMS=XLS
	OUT=WORK.drugtest;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=WORK.drugtest; RUN;


%web_open_table(WORK.drugtest);