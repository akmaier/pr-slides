set key right
set title "Exponential distribution"
set xlabel "x"
set ylabel "flambda(x)"
f1(x) = 0.25 * exp(-0.25*x);
f2(x) = 0.50 * exp(-0.50*x);
f3(x) = 0.75 * exp(-0.75*x);
f4(x) = 2.00 * exp(-2.00*x);
plot [0:6][0:0.4] f1(x) title "lambda=0.25" w l
replot f2(x) title "lambda=0.5" w l
replot f3(x) title "lambda=0.75" w l
replot f4(x) title "lambda=2.0" w l
set terminal postscript color enhanced "Helvetica" 20
set output "exponential.ps"
replot
