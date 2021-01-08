set xlabel "lambda"
set ylabel "g(lambda)"
plot [0:1][0.8:2] "dual.data" using 1:2 title "" w l
replot 1.6761782142 title "" w l
set term postscript color enhanced "Helvetica" 20
set output "dual.ps"
replot
