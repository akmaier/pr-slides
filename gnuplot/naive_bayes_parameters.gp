set key left
set xlabel "Dimension of the feature vector"
set ylabel "Number of parameters"
plot [0:100][0:6000] x + x*(x+1)/2 title "Gaussians" w l
replot 2*x title "Na\"ive Bayes" w l
set term postscript enhanced color "Helvetica" 20
set output "naive_bayes_parameters.ps"
replot
