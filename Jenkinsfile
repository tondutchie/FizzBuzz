pipeline {
    agent any

    stages {  
        stage('Build') {
            steps {
                echo 'Building..'
                sh 'make_ipa'
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