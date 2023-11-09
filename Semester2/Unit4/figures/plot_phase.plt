unset grid
unset key
set xrange [0:2*3.14159]
set yrange [-2:2]
set ytics -2,1,2 font "Courier,20"
set xtics font "Courier,20"
A = 1
f = 1
pi = 3.14159
p1 = 0*pi/180
p2 = 90*pi/180
p3 = 180*pi/180
p4 = 270*pi/180
set terminal png
set output "phase2.png"
set multiplot layout 3,1
set size 1,0.33
plot A*cos(2*pi*f*x-p1) lw 3 lc -1,A*cos(2*pi*f*x-p2) lw 3 lc 1
set size 1,0.33
plot A*cos(2*pi*f*x-p1) lw 3 lc -1,A*cos(2*pi*f*x-p3) lw 3 lc 1
set size 1,0.33
plot A*cos(2*pi*f*x-p1) lw 3 lc -1,A*cos(2*pi*f*x-p4) lw 3 lc 1
