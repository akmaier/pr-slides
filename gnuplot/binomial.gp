set key right
set title "Binomial distributions for n=20"
set xlabel "k"
set ylabel "B(k|p,n)"
n1=20; p1=0.1
n2=20; p2=0.5
n3=20; p3=0.8
i(x)=int(x+.1)
bd1(x)=n1!/(i(x)!*(n1-i(x))!)*p1**i(x)*(1-p1)**(n1-i(x))
bd2(x)=n2!/(i(x)!*(n2-i(x))!)*p2**i(x)*(1-p2)**(n2-i(x))
bd3(x)=n3!/(i(x)!*(n3-i(x))!)*p3**i(x)*(1-p3)**(n3-i(x))
set samples 21
plot [0:20][0:0.4] bd1(x) title "p=0.1" w impulses
replot bd1(x) title "" w points lt 1 pt 1
replot bd2(x) title "p=0.5" w impulses lt 2
replot bd2(x) title "" w points lt 2 pt 1
replot bd3(x) title "p=0.8" w impulses lt 3
replot bd3(x) title "" w points lt 3 pt 1
set term postscript enhanced color "Helvetica" 20
set output "binomial.ps"
replot
