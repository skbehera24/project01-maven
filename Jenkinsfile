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
                sh 'sudo cp target/*.war tomcat/webapps/'
            }
        }
    }
}
       