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
        echo "build type: ${params.type}"
        sh "env"
      }
    }

stage('test') {
      steps {
        echo 'Unit Test'
       sh 'fastlane make_ipa'
      }
    }

    } //stages
}