set size ratio 1.0
set xlabel 's1'
set ylabel 'int p(s1, s2) ds2'
set title 'Marginal of Joint Signal'
plot [][0:0.035] 'ica1_marginal.data' using 2:3 title "" w boxes
set term postscript color enhanced "Helvetica" 20
set output 'ica1_marginal.ps'
replot
