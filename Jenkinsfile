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
        fastlane tests
      }
    }
  }
  environment {
    LANG = 'en_US.UTF-8'
    LANGUAGE = 'en_US.UTF-8'
    LC_ALL = 'en_US.UTF-8'
  }
}