#!/bin/bash
set -e
#此文件放在宿主机linux下任何目录下都可以 例如：/opt/docker/jenkins_shell/deploy.sh 同时加上可执行权限 chmod +x deploy.sh

#查看当前目录
#注意shell中定义变量等号两边没有空格 例如：project_path = $(pwd) 无效会报错
project_path=$(pwd)
echo $project_path
#docker-compose.yml
docker_compose="/docker-compose.yml"
echo $docker_compose
#docker-compose.yml文件目录
docker_compose_path=$project_path$docker_compose
echo $docker_compose_path

#在此修改docker-compose.yml的环境变量：如mysql数据库管理员密码等敏感信息
sed -i 's/$MYSQL_ROOT_PASSWORD/root/' $docker_compose_path
sed -i 's/$ADMIN_USER_NAME/admin/' $docker_compose_path
sed -i 's/$ADMIN_USER_PASSWORD/12345/' $docker_compose_path

#停止所有容器
docker stop $(docker ps -aq)
#删除所有容器
docker rm $(docker ps -aq)
#删除所有镜像
docker rmi $(docker images -q)
sudo /usr/local/bin/docker-compose up -d