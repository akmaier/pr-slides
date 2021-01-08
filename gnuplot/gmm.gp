set key left
set ylabel "$p(x)$"
#set grid
set xlabel "$x$"
set title "Gaussian Mixture Model (GMM)"
# set xtics 0,5,50
f1(x) = 0.2 * 1.0 / (6.0 * sqrt(2*pi)) * exp(-0.5 * ((x-20)/6.0)**2)
f2(x) = 0.5 * 1.0 / (15.0 * sqrt(2*pi)) * exp(-0.5 * ((x-40)/15.0)**2)
f3(x) = 0.3 * 1.0 / (8.0 * sqrt(2*pi)) * exp(-0.5 * ((x-70)/8.0)**2)
plot [0:100][0:0.025] f1(x)+f2(x)+f3(x) title "sum i=1 3 pi cdot mathcalN(x; mui, sigmai)" w l
replot f1(x) title "$0.2 cdot mathcalN(x; mu1=20,\sigma1= 6.0)$" w l
replot f2(x) title "$0.5 cdot mathcalN(x; mu2=40,\sigma2=15.0)$" w l
replot f3(x) title "$0.3 cdot mathcalN(x; mu3=70,\sigma3= 8.0)$" w l
set term postscript enhanced "Helvetica" 20
set output "gmm.ps"
replot
