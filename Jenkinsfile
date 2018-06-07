pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        dir(path: '5.7') {
          powershell(returnStatus: true, script: '.\\build.ps1', returnStdout: true)
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
        powershell(returnStatus: true, script: '.\\5.7\\push-docker.ps1')
      }
    }
  }
}