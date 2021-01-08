set size ratio 0.25
plot "epsp.data" using 1:2 title "" w l lt -1 lw 1
replot "epsp2.data" using 1:2 title "" w l lt 0 lw 1
set term postscript color enhanced 
set output "epsp_summation.ps"
replot
