set key left
set title "L_1 Norm Costs"
set xlabel "r"
set ylabel "\phi(r)"
set samples 1000
plot [-4:4][-0.5:3.5] x<0 ? -x : +x title "" w l
set term postscript enhanced color "Helvetica" 20
set output "penalty_L1.ps"
replot
