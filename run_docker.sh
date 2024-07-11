xhost +
sudo docker run --rm -it --name drp_docker --network host --ulimit nofile=1024:524288  --gpus all --workdir="/root" --env="DISPLAY=$DISPLAY" -v /tmp/.X11-unix:/tmp/.X11-unix:rw -v ./src:/root/ros_ws/src --device /dev/dri:/dev/dri  -e "QT_X11_NO_MITSHM=1" --shm-size 2g --rm drp_agilex_limo:latest /bin/bash