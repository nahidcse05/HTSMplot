#set terminal pngcairo size 400,262.5 enhanced font 'Verdana,10'
#set output 'camera_classification.png'

set terminal postscript eps size 3.9,2.62 enhanced color \
    font 'Helvetica,20' linewidth 2
set output 'camera_classification_cons.eps'
set yrange [0:1]
set xlabel "Training Size"
set ylabel "F1 measure"
set title "Negative sentiment classification on Camera dataset"                                                                       
plot "camera_cons.csv" using 1:2 title "ASUM" with linespoints ,"camera_cons.csv" using 1:3 title "HTSM" with linespoints, "camera_cons.csv" using 1:4 title "JST" with linespoints

set terminal postscript eps size 3.9,2.62 enhanced color \
    font 'Helvetica,20' linewidth 2
set output 'tablet_classification_cons.eps'
set yrange [0:1]
set xlabel "Training Size"
set ylabel "F1 measure"
set title "Negative sentiment classification on Phone dataset"                                                                          
plot "tablet_cons.csv" using 1:2 title "ASUM" with linespoints ,"tablet_cons.csv" using 1:3 title "HTSM" with linespoints, "tablet_cons.csv" using 1:4 title "JST" with linespoints

set terminal postscript eps size 3.9,2.62 enhanced color \
    font 'Helvetica,20' linewidth 2
set output 'phone_classification_cons.eps'
set yrange [0:1]
set xlabel "Training Size"
set ylabel "F1 measure"
set title "Negative sentiment classification on Tablet dataset"                                                                       
plot "phone_cons.csv" using 1:2 title "ASUM" with linespoints ,"phone_cons.csv" using 1:3 title "HTSM" with linespoints, "phone_cons.csv" using 1:4 title "JST" with linespoints

set terminal postscript eps size 3.9,2.62 enhanced color \
    font 'Helvetica,20' linewidth 2
set output 'tv_classification_cons.eps'
set yrange [0:1]
set xlabel "Training Size"
set ylabel "F1 measure"
set title "Negative sentiment classification on Tv dataset"                                                                        
plot "tv_cons.csv" using 1:2 title "ASUM" with linespoints ,"tv_cons.csv" using 1:3 title "HTSM" with linespoints, "tv_cons.csv" using 1:4 title "JST" with linespoints

