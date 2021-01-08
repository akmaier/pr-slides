set size ratio 1.0
set grid
set samples 1000
plot [-2.0:2.0][-2.0:2.0] (1-x**4)**0.25 title "" w l
replot -(1-x**4)**0.25 title "" w l
replot +(1-x**2)**0.5 title "" w l
replot -(1-x**2)**0.5 title "" w l
replot +(2.0-x**4)**0.25 title "" w l
replot -(2.0-x**4)**0.25 title "" w l
replot +(0.50-x**4)**0.25 title "" w l
replot -(0.50-x**4)**0.25 title "" w l
set term postscript color enhanced "Helvetica" 20
set output 'kurtosis_optimization.ps'
replot
