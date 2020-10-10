//git credentials
def git_auth = "571f959b-ec48-4ec9-819c-d3a25a99fffb"
//git url
def git_url = "git@github.com:MyNetdisk/Blogs.git"
def contanersID = sh(`docker ps -aq`)
def imagesID = sh(`docker images -q`)
node {
    try{
        stage('pull the code') {
            checkout([$class: 'GitSCM', branches: [[name: "*/${branch}"]], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: "${git_auth}", url: "${git_url}"]]])
        }
        stage('启动服务') {
            //容器ID
            sh "contanersID = `docker ps -aq`"
            //镜像ID
            sh "imagesID = `docker images -q`"
            //停止所有容器
            sh "sudo docker stop ${contanersID}"
            //删除所有容器
            sh "sudo docker rm ${contanersID}"
            //删除所有镜像
            sh "sudo docker rmi -f ${imagesID}"
            sh "cat docker-compose.yml"
            //启动服务
            sh "sudo docker-compose up"
        }
    }catch(e){
        throw e
    }finally{
        // 邮件发送功能
        emailext( subject: '构建通知：${PROJECT_NAME} - Build # ${BUILD_NUMBER} - ${BUILD_STATUS}!', body: '${FILE,path="email.html"}', to: 'coderlife@foxmail.com' )
    }
}