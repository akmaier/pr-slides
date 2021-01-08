set key left
set title "Dead Zone Costs"
set xlabel "r"
set ylabel "\phi(r)"
set samples 1000
plot [-4:4][-.5:3.5] abs(x)<0.5 ? 0 : abs(x) - 0.5 title "a = 0.5" w l
replot abs(x)<1.0 ? 0 : abs(x) - 1.0 title "a = 1.0" w l
replot abs(x)<1.5 ? 0 : abs(x) - 1.5 title "a = 1.5" w l
set term postscript enhanced color "Helvetica" 20
set output "penalty_DeadZoneLinear.ps"
replot
