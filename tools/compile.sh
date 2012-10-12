echo "Compiling capture program"
gcc src/captureimage.c -o captureimage
echo "Compiling analytical program"
gcc -Wall -std=gnu99 -lyaml -lm `pkg-config --cflags --libs glib-2.0 opencv` -lkoki src/marker_info.c -o marker_info
