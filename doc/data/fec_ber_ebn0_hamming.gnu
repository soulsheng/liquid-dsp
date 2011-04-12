#
# fec_ber_ebn0_hamming.gnu
#
reset
set terminal postscript eps enhanced color solid rounded
set xrange [-8:10]
set yrange [1e-5:1]
set logscale y
set format y '10^{%L}'
set size ratio 0.65
set size 1.0
set xlabel 'E_b/N_0 [dB]'
set ylabel 'BER'
set key bottom right nobox
set grid xtics ytics
set pointsize 0.6
set key bottom left nobox

set pointsize 0.5

set grid linetype 1 linecolor rgb '#cccccc' lw 1
plot \
    'data/ber/ber_none.dat'     using 2:3 with linespoints linewidth 2.0 pointtype 6 linecolor rgb '#000000' title 'Uncoded',\
    'data/ber/ber_h128.dat'     using 2:3 with linespoints linewidth 1.2 pointtype 6 linecolor rgb '#004080' title 'Hamming(12,8)',\
    'data/ber/ber_h74.dat'      using 2:3 with linespoints linewidth 1.2 pointtype 6 linecolor rgb '#008040' title 'Hamming(7,4)',\
    'data/ber/ber_r3.dat'       using 2:3 with linespoints linewidth 1.2 pointtype 6 linecolor rgb '#403000' title 'Repeat(3)',\
    'data/ber/ber_r5.dat'       using 2:3 with linespoints linewidth 1.2 pointtype 6 linecolor rgb '#806000' title 'Repeat(5)'

#    'data/ber/ber_h84.dat'      using 2:3 with linespoints linewidth 1.2 pointtype 6 linecolor rgb '#008040' title 'Hamming(8,4)'