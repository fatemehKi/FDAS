Data Swim;
Input Swimmer $ FinalTime SemiFinalTime @@;
Datalines;
RK 24.05 24.07 AH 24.28 24.45 MV 24.39 24.50 BS 24.46 24.57
FH 24.47 24.63 TA 24.61 24.71 JH 24.62 24.68 AV 24.69 24.64
;
Run;

Proc ttest H0=24.5 data=swim;
var finaltime;


Proc ttest data=swim;
Title �50m Freestyle Semifinal vs. Final Results�;
Paired semifinaltime*finaltime;
Run;


