data hist1;
input Mark @@;
datalines;
68 42 89 73 98 62 53 76 33 50 46 93 56 84 68
72 59 63 68 73 82 54 87 38 67 100 74 56 85 60
; run;
/* after create a variable group  then */
Proc freq data=hist1;
Table Mark;
Run;

/*using sgplot */
proc sgplot data=hist1;
histogram mark /scale=count binstart=33 binwidth=7 ;run;
proc sgplot data=hist1;
histogram mark /scale=count nbins=10 showbins;run;

/*using univariate */ 
proc univariate data=Hist1;
histogram mark / vscale=count midpoints=(34 to 100 by 7) ;
run;
