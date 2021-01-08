set key left
set ytics 1
set xtics 1
set xrange [-2.5:2.5]
set yrange [-2.5:2.5]
set samples 1000
set size ratio 1.0
set grid
set xlabel "x_1"
set ylabel "x_2"
a = 1.0
b = 1.0
c = -0.6
plot (-2.0*c*x + sqrt(4.0*c**2*x**2 - 4.0*b*(a*x**2-1.0))) / (2.0 * b) title "" w filledcu closed lt 1
replot (-2.0*c*x - sqrt(4.0*c**2*x**2 - 4.0*b*(a*x**2 - 1.0))) / (2.0 * b) title "" w filledcu closed lt 1
set term postscript enhanced color "Helvetica" 20
set output "unit_ball_LP.ps"
replot
