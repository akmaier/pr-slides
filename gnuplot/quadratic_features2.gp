set size ratio 1.0
set title "Transformed Feature Space"
set xlabel "x1"
set ylabel "x2"
set samples 1000
plot [0:70][0:70] "quadratic_features3.data" using 1:2 title "" w points pt 1
replot "quadratic_features4.data" using 1:2 title "" w points pt 1
replot 9-x title "" w l lt 1
set term postscript color enhanced "Helvetica" 20
set output "quadratic_features2.ps"
replot
