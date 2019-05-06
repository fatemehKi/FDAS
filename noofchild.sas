data noofchild;
input number @@;
datalines;
5 1  2  0  3  2  2  0  2  4  6  5  3  2  0  1  0  2  3  1  1  3  7  4  1
;
run;

proc sgplot data=noofchild;
histogram number/scale=count nbin=8 showbins;
run;

proc freq data=noofchild;
table number;
run;
