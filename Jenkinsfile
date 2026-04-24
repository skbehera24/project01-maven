pipeline {
    agent any

    stages {
        stage('Git Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/sthita933/project01-maven.git'
            }
        }

        stage('Compilation') {
            steps {
                sh 'mvn clean compile'
            }
        }

        stage('Testing Code') {
            steps {
                sh 'mvn test'
            }
        }

        stage('Package Code') {
            steps {
                sh 'mvn package'
            }
        }

        stage('Upload to S3') {
            steps {
                s3Upload(
                    acl: 'Private',
                    bucket: 'jenkins--s3-artifact-store',
                    file: 'target/my-webapp.war'
                )
            }
        }

        stage('Deploy Code') {
            steps {
                sh 'cp target/my-webapp.war /home/ubuntu/tomcat/webapps/'
            }
        }
    }
}
