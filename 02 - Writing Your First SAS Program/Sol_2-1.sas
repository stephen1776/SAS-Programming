/*
 * 2-1
You have a text file called stocks.txt containing a stock symbol, a price, and the
number of shares. Here are some sample lines of data:
AMGN 67.66 100
DELL 24.60 200
GE 34.50 100
HPQ 32.32 120
IBM 82.25 50
MOT 30.24 100

a. Using this raw data file, create a temporary SAS data set (Portfolio). Choose
your own variable names for the stock symbol, price, and number of shares. In
addition, create a new variable (call it Value) equal to the stock price times the
number of shares. Include a comment in your program describing the purpose of
the program, your name, and the date the program was written.
*/
data portfolio;
infile '/folders/myfolders/SAS Programming/data/stocks.txt';
input Symbol$ Price Number;
Value = Number*Price;
run;
title "Portfolio Listing";
proc print data=portfolio noobs;
run;

/*
b. Write the appropriate statements to compute the average price and the average
number of shares of your stocks.
 */
title "Ave price and Ave of Number of Shares";
proc means data=portfolio n mean sum maxdec=0;
var Price Number;
run;






