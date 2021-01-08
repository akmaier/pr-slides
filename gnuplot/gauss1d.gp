set key left
set ylabel "p(x|y)"
set grid
set xlabel "eye pressure $x$"
set xtics 0,5,50
f(x) = 1.0 / (6.0 * sqrt(2*pi)) * exp(-0.5 * ((x-20)/6.0)**2)
g(x) = 1.0 / (6.0 * sqrt(2*pi)) * exp(-0.5 * ((x-30)/6.0)**2)
plot [0:50][0:0.07] f(x) title "$y = -1$" w l
replot g(x) title "$y = +1$" w l
set term postscript enhanced "Helvetica" 20
set output "gauss1d.ps"
replot
