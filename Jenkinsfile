pipeline {
    agent any

    stages {
    stage("Preparing"){
        sh'''#!/bin/bash -xe
            colls=( col1 col2 col3 )
            for eachCol in ${colls[@]}
            do
              echo $eachCol
            done
        '''
    }      
        stage('Build') {
            steps {
                echo 'Building..'
                sh 'fastlane make_ipa'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}