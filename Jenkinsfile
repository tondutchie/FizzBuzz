pipeline {
    agent any

    environment {
        LANG = 'en_US.UTF-8'
        LANGUAGE = 'en_US.UTF-8'
        LC_ALL = 'en_US.UTF-8'
    }

  stages {

    stage('prepare') {
      steps {
        echo 'Ton Dutchie'
      }
    }
  stage('Environment Integrity Check') {
            steps {
                    echo 'Environment Integrity Check'
                    sh 'gem install --user-install cocoapods-clean'
                    sh 'pod install'
                  }  
        }
	stage('Build') {
            steps {
                sh 'fastlane tests'
            }
        }

    } //stages
}