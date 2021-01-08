set size ratio 1.0
plot [-1.5:1.5][-1.5:1.5] 'clock1.data' using 1:2 title "" w points pt 5 ps 1
replot 'clock2.data' using 1:2 title "" w points pt 13 ps 3
replot "<echo '0. 0.' " w points title "" pt 7 ps 3
set term postscript color enhanced "Helvetica" 20
set output "clock.ps"
replot
