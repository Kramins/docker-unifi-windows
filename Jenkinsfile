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
          withDockerRegistry([credentialsId: "dockerhub",  url: "" ]){
              powershell(returnStatus: true, script: '.\\push.ps1', returnStdout: true)
          }
        
      }
    }
  }
}