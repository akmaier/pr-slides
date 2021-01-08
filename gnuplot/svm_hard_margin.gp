set size ratio 1
set xlabel "x1"
set ylabel "x2"
plot [0:1][0:1] -1.2*x + 0.9 title "" w l
replot -1.2*x + 0.7 title "" w l
replot -1.2*x + 1.1 title "" w l
replot "svm_hard_margin.data1" using 1:2 title "" w points pt 5
replot "svm_hard_margin.data2" using 1:2 title "" w points pt 7
replot "svm_hard_margin.data3" using 1:2 title "" w dots
set term postscript color enhanced "Helvetica" 20
set output "svm_hard_margin.ps"
replot
