pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                powershell  returnStatus: true, script: '.\\5.7\build.ps1'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Push To Docker') {
            steps {
                powershell  returnStatus: true, script: '.\\5.7\push-docker.ps1'
            }
        }
    }
}