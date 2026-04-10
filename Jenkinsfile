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
        
        stage('Artifact in s3') {
    steps {
        s3Upload(
            bucket: 'amazone-s3-bucket-123',
            file: 'target/my-webapp.war'
        )
    }
}
 stage('Deploye') {
            steps {
                sh 'cp target/*.war /home/ubuntu/apache-tomcat-9.0.117/webapps/'
            }
        }
    }
}
       