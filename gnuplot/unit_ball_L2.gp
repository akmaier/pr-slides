set key left
set ytics 1
set xtics 1
set samples 1000
set xrange [-1.5:1.5]
set yrange [-1.5:1.5]
#f(x,y) = x**2 + y**2
#set isosamples 500,500
#set contour base
#set cntrparam levels discrete 1.0
#unset surface
#set table 'unit_ball_L2.dat'
#splot f(x,y)
#unset table
set size ratio 1.0
#unset border
set grid
set xlabel "x_1"
set ylabel "x_2"
#plot 'unit_ball_L2.dat' title "" w l
plot (1 - x**2)**0.5 with filledcurve y1=0 title "" lt 1
replot -(1 - x**2)**0.5 with filledcurve y1=0 title "" lt 1
set term postscript enhanced color "Helvetica" 20
set output "unit_ball_L2.ps"
replot
