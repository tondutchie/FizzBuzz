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
        sh "./calaba.sh"
        //sh 'cd fastlane'
      }
    }

stage('test') {
      when {
        expression {
          return params.type == "test"
        }
      }
      steps {
        echo 'Unit Test'
        //sh 'fastlane make_ipa'
        sh("fastlane make_ipa")
      }
    }

    } //stages
}