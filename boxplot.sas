Data bikerace;
Input Division $ NumberLaps @@;
Datalines;
Adult   44 Adult 33 Youth 33 Masters 38 Adult 40
Masters 32 Youth 32 Youth 38 Youth 33 Adult 24
Masters 33 Adult 44 Youth 35 Adult 49 Adult 38
Adult 39 Adult 42 Adult 32 Youth 42 Youth 70
Masters 33 Adult 33 Masters 32 Youth 37 Masters 40
;
Run;

Proc sgplot data=bikerace;
Vbox numberlaps;
 Run;

Proc sgplot data=bikerace;
hbox numberlaps;
Run;