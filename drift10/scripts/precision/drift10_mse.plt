set terminal postscript eps enhanced color "Helvetica" 30
set output "error/plots/drift10_mse.eps"

set xrange [100-1:800+1]
set xtics 100,100
set yrange [0:1]
#set log y

set key above width -2 vertical maxrows 3
set tmargin 4.0

set xlabel "number of missing values"
set ylabel "mean squared error" offset 1.5 

plot\
	'error/mse/MSE_stmvl.dat' index 0 using 1:2 title 'stmvl' with linespoints lt 8 dt 2 lw 3 pt 8 lc rgbcolor "green" pointsize 1.2, \


set output "error/plots/drift10_rmse.eps"
set ylabel "root mean squared error" offset 1.5 

plot\
	'error/rmse/RMSE_stmvl.dat' index 0 using 1:2 title 'stmvl' with linespoints lt 8 dt 2 lw 3 pt 8 lc rgbcolor "green" pointsize 1.2, \

set output "error/plots/drift10_mae.eps"
set ylabel "mean absolute error" offset 1.5 

plot\
	'error/mae/MAE_stmvl.dat' index 0 using 1:2 title 'stmvl' with linespoints lt 8 dt 2 lw 3 pt 8 lc rgbcolor "green" pointsize 1.2, \
