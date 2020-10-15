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

#数据库主机
MYSQL_ROOT_HOST="mysql"
#数据库密码
MYSQL_ROOT_PASSWORD="123456"
#后台管理用户名
ADMIN_USER_NAME="admin"
#后台管理密码
ADMIN_USER_PASSWORD="123456"

#在此修改docker-compose.yml的环境变量：如mysql数据库管理员密码等敏感信息
sed -i 's/$MYSQL_ROOT_HOST/'$MYSQL_ROOT_HOST'/' $docker_compose_path
sed -i 's/$MYSQL_ROOT_PASSWORD/'$MYSQL_ROOT_PASSWORD'/g' $docker_compose_path
sed -i 's/$ADMIN_USER_NAME/'$ADMIN_USER_NAME'/' $docker_compose_path
sed -i 's/$ADMIN_USER_PASSWORD/'$ADMIN_USER_PASSWORD'/' $docker_compose_path

cat $docker_compose_path

#查询容器是否存在，存在则删除
containerId=`docker ps -aq`

if [ "$containerId" != "" ] ; then
    #停止所有容器
    docker stop $containerId
    #删除所有容器
    docker rm $containerId

    echo "成功删除容器"
fi

#删除镜像是否存在，存在则删除
imageId=`docker images -q`

if [ "$imageId" != "" ] ; then
    #删除所有镜像
    docker rmi -f $imageId

    echo "成功删除镜像"
fi

sudo /usr/local/bin/docker-compose up -d