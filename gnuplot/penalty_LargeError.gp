set key left
set title "Large Error Costs"
set xlabel "r"
set ylabel "\phi(r)"
set samples 1000
plot [-4:4][-0.5:3.0] abs(x)<0.5 ? x**2 : 0.5**2 title "a = 0.5" w l
replot abs(x)<1.0 ? x**2 : 1.0**2 title "a = 1.0" w l
replot abs(x)<1.5 ? x**2 : 1.5**2 title "a = 1.5" w l
set term postscript enhanced color "Helvetica" 20
set output "penalty_LargeError.ps"
replot
