set size ratio 1.0
unset parametric
set xrange [-5:5]
set yrange [-5:5]
set xtics 1
set ytics 1
set grid
plot "decision_boundary2.dat" using 1:2 title "" w l lc 0
replot "g1.data" title "" w dots lc 2
replot "g3.data" title "" w dots lc 3
set parametric
set trange[0:2*pi]
x1(t) = 1 * cos(2*pi*t) + -3
y1(t) = 0.8 * cos(2*pi*t) + 0.6 * sin(2*pi*t) + -3
x2(t) = 2 * cos(2*pi*t) + 3
y2(t) = 0 * cos(2*pi*t) + 1 * sin(2*pi*t) + 3
replot x1(t),y1(t) title "" lt -1 lc 2
replot x2(t),y2(t) title "" lt -1 lc 3
set term postscript enhanced
set output "gaussian2.ps"
replot
