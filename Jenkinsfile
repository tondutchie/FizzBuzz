pipeline {
  agent any

  stages {

    stage('prepare') {
      steps {
        echo 'Ton Dutchie'
      }
    }

    stage('Test') {
      steps {
        sh 'fastlane tests'
      }
    }
  }
  
}