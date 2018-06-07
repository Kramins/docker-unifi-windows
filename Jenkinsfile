pipeline {
  agent any
    stages {
        stage('Build') {
            steps {
                dir(path: '5.7') {
                    powershell(returnStatus: true, script: '.\\build.config.ps1', returnStdout: true)
                    def imageName = "${env.DOCKER_IMAGE}:${env.DOCKER_APPLICATION_VERSION}"
                    unifiImage = docker.build(imageName, "--build-arg UNIFI_VERSION=${env.DOCKER_APPLICATION_VERSION}")
                //   powershell(returnStatus: true, script: '.\\build.ps1', returnStdout: true)
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