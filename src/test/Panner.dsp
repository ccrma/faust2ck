 //-----------------------------------------------
 // The Simplest Panner
 //-----------------------------------------------

 c = hslider("pan", 0.5, 0, 1, 0.01) ;
 process = _ <: *(1-c), *(c) ;
