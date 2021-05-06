set terminal postscript eps enhanced color "Helvetica" 30
set output "runtime/plots/drift10_rt.eps"

set xrange [100:800]
set xtics 100,100
#set log y

set key above width -2 vertical maxrows 3
set tmargin 4.0

set xlabel "number of missing values"
set ylabel "running time (microseconds)" offset 1.5 

plot\
	'runtime/values/stmvl_runtime.txt' index 0 using 1:2 title 'stmvl' with linespoints lt 8 dt 2 lw 3 pt 8 lc rgbcolor "green" pointsize 1.2, \


set output "runtime/plots/drift10_rt_log.eps"
set log y

plot\
	'runtime/values/stmvl_runtime.txt' index 0 using 1:2 title 'stmvl' with linespoints lt 8 dt 2 lw 3 pt 8 lc rgbcolor "green" pointsize 1.2, \


