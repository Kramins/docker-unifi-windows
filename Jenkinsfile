pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        dir(path: '5.7') {
          echo 'test'
          powershell(returnStatus: true, script: '.\\build.config.ps1', returnStdout: true)
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