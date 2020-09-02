pipeline {
    agent any

    stages {
        stage('pull code') {
            steps {
               checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: '571f959b-ec48-4ec9-819c-d3a25a99fffb', url: 'git@github.com:MyNetdisk/Blogs.git']]])
            }
        }
    }
}
