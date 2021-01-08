set size ratio 1.0
unset parametric
set xrange [-5:5]
set yrange [-5:5]
set xtics 1
set ytics 1
set grid
plot "g2.data" title "" w dots lc 3
replot "g4.data" title "" w dots lc 2
replot "decision_boundary3.dat" using 1:2 title "" w lines lc 0
set parametric
set trange[0:2*pi]
X1(t) = 2 * cos(2*pi*t) + -3
Y1(t) = 0 * cos(2*pi*t) + 1 * sin(2*pi*t) + -3
X2(t) = 2 * cos(2*pi*t) + 3
Y2(t) = 0 * cos(2*pi*t) + 1 * sin(2*pi*t) + 3
replot X1(t),Y1(t) title "" lt -1 lc 2
replot X2(t),Y2(t) title "" lt -1 lc 3
set term postscript enhanced
set output "gaussian3.ps"
replot
