./gauss.pl 10000 1 1 0.8 -3 -3 > g1.data
./gauss.pl 10000 4 1 0 3 3 > g2.data
./gauss.pl  2500 4 1 0 3 3 > g3.data
./gauss.pl 10000 4 1 0 -3 -3 > g4.data
gnuplot gaussian1.gp
gnuplot gaussian2.gp
gnuplot gaussian3.gp
pstoedit -f fig -rotate -90 gaussian1.ps > gaussian1.fig
pstoedit -f fig -rotate -90 gaussian2.ps > gaussian2.fig
pstoedit -f fig -rotate -90 gaussian3.ps > gaussian3.fig
