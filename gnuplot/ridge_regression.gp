set key left
set ytics 1
set xtics 1
set samples 1000
set xrange [-1.5:5]
set yrange [-1.5:5]
set size ratio 1.0
set grid
set xlabel "x_1"
set ylabel "x_2"
plot +(1 - x**2)**0.5 w l title "" lt 1
replot -(1 - x**2)**0.5 w l title "" lt 1
replot "<echo '4 2'" w dots title ""
replot "<echo '0.894427191 0.4472135955'" w dots title ""
replot +(1 - (x-4)**2)**0.5 + 2 w l title "" lt 1
replot -(1 - (x-4)**2)**0.5 + 2 w l title "" lt 1
replot +(4 - (x-4)**2)**0.5 + 2 w l title "" lt 1
replot -(4 - (x-4)**2)**0.5 + 2 w l title "" lt 1
replot +(9 - (x-4)**2)**0.5 + 2 w l title "" lt 1
replot -(9 - (x-4)**2)**0.5 + 2 w l title "" lt 1
replot +(12.0557 - (x-4)**2)**0.5 + 2 w l title "" lt 1
replot -(12.0557 - (x-4)**2)**0.5 + 2 w l title "" lt 1
replot 0.5*x w l title ""
set term postscript enhanced color "Helvetica" 20
set output "ridge_regression.ps"
replot
