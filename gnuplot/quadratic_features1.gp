set size ratio 1.0
set title "Original Feature Space"
set xlabel "x1"
set ylabel "x2"
set samples 1000
plot [-10:10][-10:10] "quadratic_features1.data" using 1:2 title "" w points pt 1
replot "quadratic_features2.data" using 1:2 title "" w points pt 1
replot +sqrt(9-x*x) title "" w l lt 1
replot -sqrt(9-x*x) title "" w l lt 1
set term postscript color enhanced "Helvetica" 20
set output "quadratic_features1.ps"
replot
