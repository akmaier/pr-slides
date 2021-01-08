set size ratio 1.0
set xlabel 'x1'
set ylabel 'x2'
set grid
set samples 1000
plot 'ica_kurtosis.data' using 1:2 title "" w points
replot +(1 - x*x)**0.5 title '' w lines
replot -(1 - x*x)**0.5 title '' w lines
replot "<echo '0.5 0.866025' " title "" w dots
replot "<echo '0.965926 0.258819' " title "" w dots 
set term postscript color enhanced "Helvetica" 20
set output 'ica_kurtosis.ps'
replot
