set key rmargin
set title "Sigmoid Functions"
set xlabel "x"
set ylabel "g(ax)"
plot [-5:5][0:1] 1/(1+exp(-x)) title "a = 1" w l
replot 1/(1+exp(-2*x)) title "a = 2" w l
replot 1/(1+exp(-3*x)) title "a = 2" w l
replot 1/(1+exp(-4*x)) title "a = 2" w l
set term postscript enhanced color "Helvetica" 20
set output "sigmoid.ps"
replot
