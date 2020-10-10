//此文件放在宿主机linux下任何目录下都可以 例如：/opt/docker/jenkins_shell/deploy.sh 同时加上可执行权限 chmod +x deploy.sh
containerId = `docker ps -aq`
imageId = `docker images -q`
docker stop $containerId
docker rm $containerId
docker rmi $imageId
sudo /usr/local/bin/docker-compose up