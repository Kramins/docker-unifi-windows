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