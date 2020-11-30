set terminal pngcairo enhanced font "Arial,32" fontscale 1.0 size 1600, 1000
set output "startup0.png"

set samples 600, 600

set title "Time to first operation"
set xlabel "ms"

set offset 0,0,10,10
barwidth = 2.0
barspace = -10.0

unset border
set tics scale 0
set grid #noxtics nomxtics ytics
set style fill solid noborder
set xtics 1000

set ytics offset 0,first -barwidth/2
plot \
'startup.data' using ($2*0.5):($0*barspace+1*barwidth):($2*0.5):(barwidth/2):yticlabel(1) title "OpenJDK" with boxxyerrorbars linecolor rgb "red" , \
'startup.data' using ($2+20):($0*barspace+1*barwidth):2 with labels left notitle

