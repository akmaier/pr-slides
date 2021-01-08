set size ratio 1.0
unset parametric
set xrange [-5:5]
set yrange [-5:5]
set xtics -5,1,+5
set ytics -5,1,+5
plot "gauss6.data" title "" w points pt 4 ps 0
set parametric
set trange[0:2*pi]
x(t) = 1 * cos(2*pi*t) + 0
y(t) = -0.8 * cos(2*pi*t) + 0.6 * sin(2*pi*t) + 0
replot x(t),y(t) title "" lt -1 
set term postscript enhanced
set output "gauss6.ps"
replot
