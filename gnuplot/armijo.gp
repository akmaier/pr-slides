set key left
set ytics 1
set xtics 1
set samples 5000
set xrange [-0.1:1.3]
set yrange [0:3]
set xlabel "t"
plot 3*(x-0.7)**2 + 0.5 title "" w l lt 1
replot -4.2*x + 0.5 + 0.49*3 title "" w l
replot -4.2*0.4*x + 0.5 + 0.49*3 title "" w l
replot "<echo '.0 1.97' " w points title "" ls 7
replot "<echo '1. .77' " w points title "" ls 7
replot "<echo '1. .29' " w points title "" ls 7
set term postscript enhanced color "Helvetica" 20
set output "armijo.ps"
replot
