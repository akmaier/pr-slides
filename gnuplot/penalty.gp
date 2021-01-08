set key left
set title "Penalty Loss Functions"
set xlabel "r"
set ylabel "\phi(r)"
set ytics 5
set samples 1000
plot [-3:3][-1.0:15] x<0 ? -x : +x title "L_1 Norm" w l
replot x**2 title "L_2 Norm" w l 
replot abs(x)<2.5 ? -2.5**2 * log(1.0 - (x/2.5)**2) : 10**10 title "Log Barrier" w l
replot abs(x)<1.5 ? 0 : abs(x) - 1.5 title "Dead Zone" w l
replot abs(x)<1.5 ? x**2 : 1.5**2 title "Large Error" w l
replot abs(x)<1.5 ? x**2 : 1.5*(2*abs(x) - 1.5) title "Huber Loss" w l
set term postscript enhanced color "Helvetica" 20
set output "penalty.ps"
replot
