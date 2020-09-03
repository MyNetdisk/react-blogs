pipeline {
    agent any

    stages {
        stage('pull code') {
            steps {
               checkout([$class: 'GitSCM', branches: [[name: '*/${branch}']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: '571f959b-ec48-4ec9-819c-d3a25a99fffb', url: 'git@github.com:MyNetdisk/Blogs.git']]])
            }
        }
    }
    post { 
        always { 
            emailext( subject: '构建通知：${PROJECT_NAME} - Build # ${BUILD_NUMBER} - ${BUILD_STATUS}!', body: '${FILE,path="email.html"}', to: 'coderlife@foxmail.com' ) 
        } 
    }
}
