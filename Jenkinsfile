pipeline {
  agent any
    stages {
        stage('Build') {
            steps {

                dir(path: '5.7') {
                    // powershell(returnStatus: true, script: '.\\build.config.ps1', returnStdout: true)
                    // imageName = "${env.DOCKER_IMAGE}:${env.DOCKER_APPLICATION_VERSION}"
                    // unifiImage = docker.build(imageName, "--build-arg UNIFI_VERSION=${env.DOCKER_APPLICATION_VERSION}")
                }
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Push To Docker') {
            steps {
                echo 'Push To Docker..'
            }
        }
    }
}