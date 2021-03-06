set term postscript eps enhanced color linewidth 2
set out 'perplex.eps'
set style line 102 lc rgb '#d6d7d9' lt 0 lw 1
set grid back ls 102
set multiplot layout 2,2 title "Perplexity comparison across different topic models"

# --- GRAPH a
#set label 1 'a' at graph 0.92,0.9 font ',8'
#plot f(x) with lines ls 1
set title "Camera Dataset"
set yrange [200:3000]
set ylabel "Perplexity"
set xlabel "Training Size"

plot "camera.csv" using 1:2 title "LDA" with linespoints ,"camera.csv" using 1:3 title "HTMM" with linespoints, "camera.csv" using 1:4 title "HTSM" with linespoints, "camera.csv" using 1:5 title "ASUM" with linespoints, "camera.csv" using 1:6 title "JST" with linespoints
# --- GRAPH b
set title "Tablet Dataset"
set ylabel ""
set yrange [200:3000]
plot "tablet.csv" using 1:2 title "LDA" with linespoints ,"tablet.csv" using 1:3 title "HTMM" with linespoints, "tablet.csv" using 1:4 title "HTSM" with linespoints, "tablet.csv" using 1:5 title "ASUM" with linespoints, "tablet.csv" using 1:6 title "JST" with linespoints
# --- GRAPH c
set title "Phone Dataset"
set ylabel "Perplexity"
set yrange [200:3000]
set xlabel "Training Size"
plot "phone.csv" using 1:2 title "LDA" with linespoints ,"phone.csv" using 1:3 title "HTMM" with linespoints, "phone.csv" using 1:4 title "HTSM" with linespoints, "phone.csv" using 1:5 title "ASUM" with linespoints, "phone.csv" using 1:6 title "JST" with linespoints

# --- GRAPH d
set title "Tv Dataset"
set ylabel ""
set yrange [200:3000]
set xlabel "Training Size"
plot "tv.csv" using 1:2 title "LDA" with linespoints ,"tv.csv" using 1:3 title "HTMM" with linespoints, "tv.csv" using 1:4 title "HTSM" with linespoints, "tv.csv" using 1:5 title "ASUM" with linespoints, "tv.csv" using 1:6 title "JST" with linespoints
unset multiplot
unset output
