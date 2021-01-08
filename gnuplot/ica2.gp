set size ratio 1.0
set xlabel 'x1'
set ylabel 'x2'
set title 'Mixed Signal Observations'
plot [-10:10][-10:10] 'ica.data' using 3:4 title "" w dots
set term postscript color enhanced "Helvetica" 20
set output 'ica2.ps'
replot
