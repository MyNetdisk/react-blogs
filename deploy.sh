#!/bin/bash
set -e
//此文件放在宿主机linux下任何目录下都可以 例如：/opt/docker/jenkins_shell/deploy.sh 同时加上可执行权限 chmod +x deploy.sh

//查看当前目录
pwd

//在此修改docker-compose.yml的环境变量：如mysql数据库管理员密码等敏感信息
sed -i 's/$MYSQL_ROOT_PASSWORD/root/' /var/lib/jenkins/workspace/Blogs/docker-compose.yml
sed -i 's/$ADMIN_USER_NAME/admin/' /var/lib/jenkins/workspace/Blogs/docker-compose.yml
sed -i 's/$ADMIN_USER_PASSWORD/12345/' /var/lib/jenkins/workspace/Blogs/docker-compose.yml

//停止所有容器
docker stop $(docker ps -aq)
//删除所有容器
docker rm $(docker ps -aq)
//删除所有镜像
docker rmi $(docker images -q)
sudo /usr/local/bin/docker-compose up -d