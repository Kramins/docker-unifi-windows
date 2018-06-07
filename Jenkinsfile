pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        dir(path: '5.7') {
          powershell(returnStatus: true, script: '.\\build.ps1')
        }
      }
    }
    stage('Test') {
      steps {
        echo 'Testing..'
      }
    }
    stage('Push To Docker') {
      when {
        branch 'master'
      }
      steps {
          withDockerRegistry([credentialsId: "dockerhub",  url: "" ]){
              dir(path: '5.7') {
                powershell(returnStatus: true, script: '.\\push.ps1')
              }
          }
        
      }
    }
  }
}