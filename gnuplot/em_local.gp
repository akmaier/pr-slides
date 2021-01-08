set xlabel "parameter $\theta$"
set ylabel "KL"
plot [-10:10][-1000:4000] -x**4 +100*x**2 + 100*x title "" w l
replot "<echo '-2 184' " w points title "" ls 7
replot "<echo '-3 519' " w points title "" ls 7
replot "<echo '-4 944' " w points title "" ls 7
replot "<echo '-5 1375' " w points title "" ls 7
replot "<echo '-6 1704' " w points title "" ls 7
replot "<echo '-7 1799' " w points title "" ls 7
set term postscript color enhanced "Helvetica" 20
set output 'em_local.ps'
replot
