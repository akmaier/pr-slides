set key right
set title "Poisson distribution"
set xlabel "k"
set ylabel "Plambda(X=k)"
i(x)=int(x+.1)
pd1(x)= 1**i(x) / i(x)! * exp(-1)
pd2(x)= 5**i(x) / i(x)! * exp(-5)
pd3(x)= 10**i(x) / i(x)! * exp(-10)
set samples 21
plot [0:20][0:0.4] pd1(x) title "lambda=1" w impulses
replot pd1(x) title "" w points lt 1 pt 1
replot pd2(x) title "lambda=5" w impulses lt 2
replot pd2(x) title "" w points lt 2 pt 1
replot pd3(x) title "lambda=10" w impulses lt 3
replot pd3(x) title "" w points lt 3 pt 1
set term postscript enhanced color "Helvetica" 20
set output "poisson.ps"
replot
