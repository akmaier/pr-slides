f0(x) = 4*x**4 - 3*x**2 + 1*x + 2.5;
f1(x) = -2* 1/((2*pi)**0.5*.3) * exp(-0.5*(x/.3)**2) + 1;
plot [-1:1][-2:5] f0(x) title "f0(x)" w l
replot f1(x) title "f1(x)" w l
replot f0(x) + 0.1*f1(x) title "" w l ls 4
replot f0(x) + 0.2*f1(x) title "" w l ls 4
replot f0(x) + 0.3*f1(x) title "" w l ls 4
replot f0(x) + 0.4*f1(x) title "" w l ls 4
replot f0(x) + 0.5*f1(x) title "" w l ls 4
replot f0(x) + 0.6*f1(x) title "" w l ls 4
replot f0(x) + 0.7*f1(x) title "" w l ls 4
replot f0(x) + 0.8*f1(x) title "" w l ls 4
replot f0(x) + 0.9*f1(x) title "" w l ls 4
replot f0(x) + 1.0*f1(x) title "" w l ls 4
replot 0 title "" w l ls 1 
replot "<echo '-0.419610130124 0' " w dots title "" ls 7
replot "<echo '+0.419610130124 0' " w dots title "" ls 7
replot "<echo '-0.419610130124 1.6761782142' " w points title "" ls 7
set term postscript color enhanced "Helvetica" 20
set output "lagrange.ps"
replot
