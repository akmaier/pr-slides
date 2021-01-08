set key right
set title "Hypergeometric distribution"
set xlabel "k"
set ylabel "h(k|N,M,n)"
i(x)=int(x+.1)
n=20
M1=20; N1=30
M2=50; N2=60
M3=20; N3=60
h1(x)= M1!/(i(x)! * (M1 - i(x))!) * (N1-M1)!/((n-i(x))! * (N1-M1-n+i(x))!) / (N1!/(n! * (N1-n)!));
h2(x)= M2!/(i(x)! * (M2 - i(x))!) * (N2-M2)!/((n-i(x))! * (N2-M2-n+i(x))!) / (N2!/(n! * (N2-n)!));
h3(x)= M3!/(i(x)! * (M3 - i(x))!) * (N3-M3)!/((n-i(x))! * (N3-M3-n+i(x))!) / (N3!/(n! * (N3-n)!));
set samples 21
plot [0:20][0:0.4] h1(x) title "M=20 and N=30" w impulses
replot h1(x) title "" w points lt 1 pt 1
replot h2(x) title "M=50 and N=60" w impulses lt 2 
replot h2(x) title "" w points lt 2 pt 1
replot h3(x) title "M=20 and N=60" w impulses lt 3 
replot h3(x) title "" w points lt 3 pt 1
set term postscript enhanced color "Helvetica" 20
set output "hypergeometric.ps"
replot
