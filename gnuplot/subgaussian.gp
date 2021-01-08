set xlabel "y"
set ylabel "p(y)"
set title "Uniform Distribution"
set samples 1000
set xtics 1
plot [-5:5][0:0.5] abs(x) < sqrt(3) ? 1/(2*sqrt(3)) : 0 title "" w l
replot 1/((2*pi)**0.5) * exp(-0.5 * x*x) title "" w l
set term postscript color enhanced "Helvetica" 20
set output 'subgaussian.ps'
replot
