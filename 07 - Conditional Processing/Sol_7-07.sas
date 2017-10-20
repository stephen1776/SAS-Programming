/*
 * 7-7
Using the Bicycles data set, list all the observations for Road Bikes that cost more
than $2,500 or Hybrids that cost more than $660. The variable Model contains the
type of bike and UnitCost contains the cost.
 */
libname lrn_data '/folders/myfolders/SAS Programming/data';
title "Selected Bicycle Data";
proc print data=lrn_data.bicycles noobs;
where Model eq "Road Bike" and UnitCost gt 2500 or
Model eq "Hybrid" and UnitCost gt 660;
run;