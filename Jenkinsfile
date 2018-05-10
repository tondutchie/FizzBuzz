pipeline {
  agent any

  stages {

    stage('prepare') {
      steps {
        echo 'Ton Dutchie'
      }
    }

    stage('Build') {
      steps {
        sh 'fastlane tests'
      }
    }
  }
  
}