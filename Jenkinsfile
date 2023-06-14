pipeline {
    agent any
    tools {
            maven 'maven'
    }
    stages {
        stage('Checkout,Build,Test,hello'){
            steps{
                parallel(
            "Checkout" {
                git branch:'master',
                credentialsId:'cc118c05-72a7-46a9-8b85-9a42e76bd83f',
                url:'https://github.com/Haritha-gitt/jenkins-pipeline.git'
                sleep 7
            },
        
            "Build" {
                bat 'mvn clean package'
                sleep 7
             },
            "Test" {
                bat 'mvn test'
                sleep 7
             },
            "hello"{
                echo'end of pipeline'
             }
                )
            }
        }
    }
}
