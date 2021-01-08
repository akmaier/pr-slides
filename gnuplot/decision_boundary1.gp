f(x,y) = -9.0/72*x*x + 20.0/9*x*y - 8.0/9*y*y - 29.0/12*x -14.0/3*y + 1.0/16 + 0.5*log(4.0/0.36) 
set isosamples 100,100
set contour base
set cntrparam levels discrete 0.0
unset surface
set table 'decision_boundary1.dat'
splot f(x,y)
unset table
plot 'decision_boundary1.dat' w l
