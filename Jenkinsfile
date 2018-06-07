pipeline {
  agent {
    node {
      label 'build node'
    }

  }
  stages {
    stage('Build') {
      steps {
        dir(path: '5.7') {
          echo 'test'
          powershell(returnStatus: true, script: '.\\build.config.ps1', returnStdout: true)
          unifiImage = docker.build("${env.DOCKER_IMAGE}:${env.DOCKER_APPLICATION_VERSION}", "--build-arg UNIFI_VERSION=${env.DOCKER_APPLICATION_VERSION}")
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