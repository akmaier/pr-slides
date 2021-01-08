plot [0:7] 'splines.data' smooth csplines w l title ""
replot 'splines.data' w points title "" 
set term postscript color enhanced "Helvetica" 20
set output 'splines.ps'
replot
