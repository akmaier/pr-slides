set xlabel "y"
set ylabel "p(y)"
set title "Laplacian Distribution"
set samples 1000
set xtics 1
plot [-5:5][0:0.8] 1/sqrt(2) * exp(-sqrt(2)*abs(x)) title "" w l 
replot 1/((2*pi)**0.5) * exp(-0.5 * x*x) title "" w l
set term postscript color enhanced "Helvetica" 20
set output 'supergaussian.ps'
replot
