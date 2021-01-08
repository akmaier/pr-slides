set key left
set ytics 1
set xtics 1
set samples 5000
set xrange [-1.5:5]
set yrange [-1.5:5]
set size ratio 1.0
set grid
set xlabel "x_1"
set ylabel "x_2"
plot abs(x) > 1 ? 0 : 1 - abs(x) title "" w l lt 1
replot abs(x) > 1 ? 0 : -1 + abs(x) title "" w l lt 1
replot "<echo '4 2'" w dots title ""
replot "<echo '1 0'" w dots title ""
replot +(1 - (x-4)**2)**0.5 + 2 w l title "" lt 1
replot -(1 - (x-4)**2)**0.5 + 2 w l title "" lt 1
replot +(4 - (x-4)**2)**0.5 + 2 w l title "" lt 1
replot -(4 - (x-4)**2)**0.5 + 2 w l title "" lt 1
replot +(9 - (x-4)**2)**0.5 + 2 w l title "" lt 1
replot -(9 - (x-4)**2)**0.5 + 2 w l title "" lt 1
replot +(13 - (x-4)**2)**0.5 + 2 w l title "" lt 1
replot -(13 - (x-4)**2)**0.5 + 2 w l title "" lt 1
set term postscript enhanced color "Helvetica" 20
set output "lasso.ps"
replot
