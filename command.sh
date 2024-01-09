
docker buildx build --platform linux/amd64 -t cs143 .
docker run -it --mount type=bind,source=$HOME/W.D/12_cs143/assignments,target=/usr/class/assignments --platform linux/amd64 cs143
docker run -it cs143
