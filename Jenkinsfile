pipeline {
    agent any

    stages {
        stage('git checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/sthita933/project01-maven.git'
            }
        }
         stage('Compilitation') {
            steps {
                sh 'mvn clean compile'
            }
        }
         stage('Testing code') {
            steps {
                sh 'mvn clean test'
            }
        }
         stage('Pacakge the code ') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('s3') {
            steps {
                s3Upload acl: 'Private', bucket: 'amazone-s3-bucket-123', cacheControl: '', excludePathPattern: '', file: 'target/my-webapp.war', includePathPattern: '', metadatas: [''], redirectLocation: '', sseAlgorithm: '', tags: '', text: '', workingDir: ''
            }
        }
         stage('Deploying code ') {
            steps {
                sh 'cp target/*.war /home/ubuntu/apache-tomcat-9.0.117/webapps/'
            }
        }
    }
}
