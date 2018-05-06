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
        sh 'gem install fastlane -NV'
      }
    }

stage('Build') {
            steps {
                sh 'fastlane make_ipa'
            }
        }

    } //stages
}