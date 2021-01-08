set xlabel "x"
set ylabel "f(x)"
plot [-6:6] 0.5*x*x w l title "f(x) = 0.5 * x^2"
replot "stepsize_example3.data" using 1:2 w linespoints title ""
set term postscript color enhanced "Helvetica" 20
set output "stepsize_example3.ps"
replot
