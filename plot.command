#set terminal pngcairo size 400,262.5 enhanced font 'Verdana,10'
#set output 'camera_perplexity.png'

set terminal postscript eps size 3.9,2.62 enhanced color \
    font 'Helvetica,20' linewidth 2
set output 'camera_perplexity.eps'
set xlabel "Training Size"
set ylabel "Perplexity"
set title "Perplexity comparison on Camera dataset"                                                                       
plot "camera.csv" using 1:2 title "LDA" with linespoints ,"camera.csv" using 1:3 title "HTMM" with linespoints, "camera.csv" using 1:4 title "HTSM" with linespoints, "camera.csv" using 1:5 title "ASUM" with linespoints, "camera.csv" using 1:6 title "JST" with linespoints

set terminal postscript eps size 3.9,2.62 enhanced color \
    font 'Helvetica,20' linewidth 2
set output 'tablet_perplexity.eps'
set xlabel "Training Size"
set ylabel "Perplexity"
set title "Perplexity comparison on Phone dataset"                                                                          
plot "tablet.csv" using 1:2 title "LDA" with linespoints ,"tablet.csv" using 1:3 title "HTMM" with linespoints, "tablet.csv" using 1:4 title "HTSM" with linespoints, "tablet.csv" using 1:5 title "ASUM" with linespoints, "tablet.csv" using 1:6 title "JST" with linespoints

set terminal postscript eps size 3.9,2.62 enhanced color \
    font 'Helvetica,20' linewidth 2
set output 'phone_perplexity.eps'
set xlabel "Training Size"
set ylabel "Perplexity"
set title "Perplexity comparison on Tablet dataset"                                                                       
plot "phone.csv" using 1:2 title "LDA" with linespoints ,"phone.csv" using 1:3 title "HTMM" with linespoints, "phone.csv" using 1:4 title "HTSM" with linespoints, "phone.csv" using 1:5 title "ASUM" with linespoints, "phone.csv" using 1:6 title "JST" with linespoints

set terminal postscript eps size 3.9,2.62 enhanced color \
    font 'Helvetica,20' linewidth 2
set output 'tv_perplexity.eps'
set xlabel "Training Size"
set ylabel "Perplexity"
set title "Perplexity comparison on Tv dataset"                                                                        
plot "tv.csv" using 1:2 title "LDA" with linespoints ,"tv.csv" using 1:3 title "HTMM" with linespoints, "tv.csv" using 1:4 title "HTSM" with linespoints, "tv.csv" using 1:5 title "ASUM" with linespoints, "tv.csv" using 1:6 title "JST" with linespoints

