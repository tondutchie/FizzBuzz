pipeline {
  agent any
  stages {
    stage('test') {

      steps {
        sh 'fastlane tests'
      }
    }

    stage('beta') {

      steps {
        sh 'fastlane make_ipa'
      }
    }
    }
   }