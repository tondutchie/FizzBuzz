pipeline {
  agent any

  environment {
    export LC_ALL=en_US.UTF-8
    export LANG=en_US.UTF-8
  }

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