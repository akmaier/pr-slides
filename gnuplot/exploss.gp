set title "Loss Functions"
set xlabel "$y \cdot f$"
set ylabel "Loss"
set samples 1000
plot [-2:2][-0.1:3.1] x<0?1:0 w l title "Missclassification"
replot (x-1)**2 w l title "Squared Error"
replot exp(-x) w l title "Exponential"
replot x<1?-x+1:0 w l title "SVM"
set term postscript color enhanced "Helvetica" 20
set output 'exploss.ps'
replot
