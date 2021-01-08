set ylabel 'kurtosis'
set xlabel 'angle of w'
#set xtics 0.785398163397
set xtics 0.261799387799
set grid
plot [0:3.14159265][-1.3:-0.6] 'kurtosis.data' title "" w l
set term postscript color enhanced "Helvetica" 20
set output 'kurtosis.ps'
replot
