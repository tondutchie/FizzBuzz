pipeline {
    agent any

    environment {
        LANG = 'en_US.UTF-8'
        LANGUAGE = 'en_US.UTF-8'
        LC_ALL = 'en_US.UTF-8'
    }

     parameters {
    string(defaultValue: "test", description: "build type", name: "type")
  }

  stages {

    stage('prepare') {
      steps {
        echo "build type: ${params.type}"
        sh "env"
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
      }
    }

    } //stages
}