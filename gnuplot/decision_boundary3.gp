f(x,y) = -1.5*x - 6*y 
set isosamples 100,100
set contour base
set cntrparam levels discrete 0.0
unset surface
set table 'decision_boundary3.dat'
splot f(x,y)
unset table
plot 'decision_boundary3.dat' w l
