pipeline {
    agent any
    tools {
        maven 'maven'
    }
    stages {
        stage('checkout') {
            steps {
                withCredentials([string(credentialsId: 'github', variable: 'github-cred')]) {
                    git branch: 'main', url: 'https://github.com/Haritha-gitt/jenkins-pipeline.git'
                }
            }
        }
        stage('build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('docker image') {
            steps {
                script {
                    docker.withRegistry('', 'docker-jenkins') {
                        def image = docker.build('harithabondalapati/test:latest')
                    }
                }
            }
        }
        stage('docker push') {
            steps {
                script {
                    docker.withRegistry('', 'docker-jenkins') {
                        def image = docker.image('harithabondalapati/test:latest')
                        image.push()
                    }
                }
            }
        }
        stage('deploy') {
            steps {
                    ansiblePlaybook credentialsId: 'admin-api-server', disableHostKeyChecking: true, installation: 'ansible', inventory: 'test.inv', playbook: 'test.yml'
            }
        }       
    }
}
