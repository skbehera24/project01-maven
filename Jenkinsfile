pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/sthita933/project01-maven.git'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
         stage('Deploye') {
            steps {
                sh 'sudo cp target/*.war /home/ubuntu/apache-tomcat-9.0.117/webapps/'
            }
        }
        stage('Artifact in s3') {
            steps {
                s3Upload acl: 'Private', bucket: 'amazone-s3-bucket-123', cacheControl: '', excludePathPattern: '', file: 'target/*.war', includePathPattern: '', metadatas: [''], redirectLocation: '', sseAlgorithm: '', tags: '', text: '', workingDir: ''
            }
        }
    }
}
       