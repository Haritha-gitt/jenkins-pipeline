pipeline {
    agent any
    tools {
            maven 'maven'
    }
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/Haritha-gitt/jenkins-pipeline.git'
            }
        }
        
        stage('Build') {
            steps {
                bat 'start /b mvn clean install'
            }
        }
    }
}
