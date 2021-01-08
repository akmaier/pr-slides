set key left
set title "L_2 Norm Costs"
set xlabel "r"
set ylabel "\phi(r)"
plot [-4:4][-0.5:10] x**2 title "" w l
set term postscript enhanced color "Helvetica" 20
set output "penalty_L2.ps"
replot
