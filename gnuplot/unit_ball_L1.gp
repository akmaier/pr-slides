set key left
set ytics 1
set xtics 1
set xrange [-1.5:1.5]
set yrange [-1.5:1.5]
set samples 1000
f(x,y) = abs(x) + abs(y)
set isosamples 500,500
set contour base
set cntrparam levels discrete 1.0
unset surface
set table 'unit_ball_L1.dat'
splot f(x,y)
unset table
set size ratio 1.0
#unset border
set grid
set xlabel "x_1"
set ylabel "x_2"
plot abs(x) > 1 ? 0 : 1 - abs(x) title "" with filledcurve y1=0 lt 1
replot abs(x) > 1 ? 0 : -1 + abs(x) title "" with filledcurve y1= 0 lt 1
#plot 'unit_ball_L1.dat' title "" w l lt 1
set term postscript enhanced color "Helvetica" 20
set output "unit_ball_L1.ps"
replot
