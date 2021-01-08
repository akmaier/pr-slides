set size ratio 1.0
set xlabel 'x1'
set ylabel 'int p(x1, x2) dx2'
set title 'Marginal of Mixed Signal'
plot [][0:0.045] 'ica2_marginal.data' using 2:3 title "" w boxes
set term postscript color enhanced "Helvetica" 20
set output 'ica2_marginal.ps'
replot
