pipeline {
    agent any
    tools {
            maven 'maven'
    }
    stages {
        stage('Checkout') {
            steps {
                git branch:'master',
                credentialsId:'cc118c05-72a7-46a9-8b85-9a42e76bd83f',
                url:'https://github.com/Haritha-gitt/jenkins-pipeline.git'
            }
        }
        
        stage('Build') {
            steps {
                bat 'mvn clean package'
            }
        }
        stage('Test') {
            steps {
                bat 'mvn test'
            }
        }
        stage('docker image') {
            steps {
                bat 'docker build -t harithabondalapati/new-image .'
            }
        }
        stage('dockerhub push')
        {
            steps{
                withCredentials([string(credentialsId: 'dockerhubid', variable: 'dockerhubpwd')]) {
                    bat 'docker login -u harithabondalapati --password-stdin ${dockerhubpwd}'

                }
                bat 'docker push harithabondalapati/new-image'
            }
        }
    }
}
