pipeline {
    agent any
    tools {
            maven 'maven'
    }
    stages {
            stage('Checkout'){
                steps{
                        git branch:'master',
                        credentialsId:'cc118c05-72a7-46a9-8b85-9a42e76bd83f',
                        url:'https://github.com/Haritha-gitt/jenkins-pipeline.git'
                }
            }    
            stage('Build') {
                steps{
                        bat 'mvn clean package'
                }
            }
            stage('Test') {
                steps{
                        bat 'mvn test'
                }
            }
            stage('hello'){
                steps{
                        echo'end of pipeline'
                }
            }
    }
}
