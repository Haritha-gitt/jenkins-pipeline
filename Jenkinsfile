pipeline {
    agent any
    tools {
            maven 'maven'
    }
    stages {
        stage('Checkout,Build,Test,hello'){
            parallel{
            stage('Checkout'){
                steps{
                        git branch:'master',
                        credentialsId:'cc118c05-72a7-46a9-8b85-9a42e76bd83f',
                        url:'https://github.com/Haritha-gitt/jenkins-pipeline.git'
                        sleep 7
                }
            }    
            stage('Build') {
                steps{
                        bat 'mvn clean package'
                        sleep 7
                }
            }
            stage('Test') {
                steps{
                        bat 'mvn test'
                        sleep 7
                }
            }
            stage('hello'){
                steps{
                        echo'end of pipeline'
                }
            }
           }
        }
    }
}
