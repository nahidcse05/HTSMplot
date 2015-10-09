set term postscript eps enhanced color linewidth 2
set out 'pros.eps'
set style line 102 lc rgb '#d6d7d9' lt 0 lw 1
set grid back ls 102
set multiplot layout 2,2 title "Positive sentiment classification"

# --- GRAPH a
#set label 1 'a' at graph 0.92,0.9 font ',8'
#plot f(x) with lines ls 1
set title "Camera Dataset"
set ylabel "F1 measure"
set xlabel "Training Size"
set yrange [0:1]
plot "camera_pros.csv" using 1:2 title "ASUM" with linespoints ,"camera_pros.csv" using 1:3 title "HTSM" with linespoints, "camera_pros.csv" using 1:4 title "JST" with linespoints
# --- GRAPH b
set title "Tablet Dataset"
set ylabel ""
set yrange [0:1]
plot "tablet_pros.csv" using 1:2 title "ASUM" with linespoints ,"tablet_pros.csv" using 1:3 title "HTSM" with linespoints, "tablet_pros.csv" using 1:4 title "JST" with linespoints
# --- GRAPH c
set title "Phone Dataset"
set ylabel "F1 measure"
set xlabel "Training Size"
set yrange [0:1]
plot "phone_pros.csv" using 1:2 title "ASUM" with linespoints ,"phone_pros.csv" using 1:3 title "HTSM" with linespoints, "phone_pros.csv" using 1:4 title "JST" with linespoints
# --- GRAPH d
set title "Tv Dataset"
set ylabel ""
set xlabel "Training Size"
set yrange [0:1]
plot "tv_pros.csv" using 1:2 title "ASUM" with linespoints ,"tv_pros.csv" using 1:3 title "HTSM" with linespoints, "tv_pros.csv" using 1:4 title "JST" with linespoints
unset multiplot
unset output

