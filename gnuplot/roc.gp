set size ratio 1.0
set key left
set xlabel "1 - specifity"
set ylabel "sensitivity"
plot [0:1][0:1] x title "" w l
replot "<echo '.5 .5' " w points title "" ls 7
replot "<echo '0. 0.' " w points title "" ls 7
replot "<echo '0. 1.' " w points title "" ls 7
replot "<echo '1. 1.' " w points title "" ls 7
replot "<echo '.3 .65' " w points title "" ls 7
replot "<echo '.5 .8' " w points title "" ls 7
replot "<echo '.72 .3' " w points title "" ls 7
set term postscript enhanced "Helvetica" 20
set output "roc.ps"
replot
