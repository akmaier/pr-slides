set key right
set title "Conditionals and Posteriors"
set xlabel "x"
set ylabel "p"
set ytics 0.2
set xtics 1
s1 = 0.25
s2 = 0.25
m1 = -2
m2 = 1
f(x) = 1/(sqrt(2*pi)*s1) * exp(-0.5 * ((x-m1)/s1)**2)
g(x) = 1/(sqrt(2*pi)*s2) * exp(-0.5 * ((x-m2)/s2)**2)
plot [-5:5][0:2] f(x) title "p(x|y=0)" w l
replot g(x) title "p(x|y=1)" w l
replot 1/(1+exp(-log(f(x)/g(x)))) title "p(y=0|x)" w l
replot 1/(1+exp(log(f(x)/g(x)))) title "p(y=1|x)" w l
set term postscript enhanced color "Helvetica" 20
set output "logit.ps"
replot
