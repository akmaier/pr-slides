set key left
set title "Log Barrier Costs"
set xlabel "r"
set ylabel "\phi(r)"
set samples 1000
plot [-4:4][-1.0:30] abs(x)<0.5 ? -0.5**2 * log(1.0 - (x/0.5)**2) : 10**10 title "a = 0.5" w l
replot abs(x)<2.0 ? -2.0**2 * log(1.0 - (x/2.0)**2) : 10**10 title "a = 2.0" w l
replot abs(x)<3.5 ? -3.5**2 * log(1.0 - (x/3.5)**2) : 10**10 title "a = 3.5" w l
set term postscript enhanced color "Helvetica" 20
set output "penalty_LogBarrier.ps"
replot
