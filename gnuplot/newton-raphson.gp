set key right
set xlabel "x"
set ylabel "f(x)"
plot [-15:15][0:30] 0.001*x**4 w l
replot 20.736 - 6.912*(x+12) + 0.864*(x+12)**2 title "" w l
replot 4.096 - 2.048*(x+8) + 0.768/2*(x+8)**2 title "" w l
replot "<echo '-12 20.736'" w dots title ""
replot "<echo '-8 6.912'" w dots title "" 
replot "<echo '-8 4.096'" w dots title "" 
replot "<echo '-5.33333 1.36533'" w dots title ""
replot "<echo '-5.33333 .80909'" w dots title ""
set term postscript enhanced color "Helvetica" 20
set output "newton-raphson.ps"
replot
