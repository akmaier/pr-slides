set size ratio 1.0
set xlabel 'x1'
set ylabel 'x2'
set title 'Whitened Observations'
plot 'ica_whitened.data' using 1:2 title "" w points
set term postscript color enhanced "Helvetica" 20
set output 'ica_whitened.ps'
replot
