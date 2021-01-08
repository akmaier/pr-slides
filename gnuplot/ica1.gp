set size ratio 1.0
set xlabel 's1'
set ylabel 's2'
set title 'Original Signals'
plot 'ica.data' using 1:2 title "" w points
set term postscript color enhanced "Helvetica" 20
set output 'ica1.ps'
replot
