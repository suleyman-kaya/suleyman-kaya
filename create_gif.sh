ffmpeg -loop 1 -t 2 -i image1.jpeg -loop 1 -t 2 -i image2.jpeg -loop 1 -t 2 -i image3.jpeg -loop 1 -t 2 -i image4.jpeg \
-filter_complex \
"[0][1][2][3]concat=n=4:v=1:a=0,format=rgba,fps=10,scale=500:-1:flags=lanczos" \
output.gif

