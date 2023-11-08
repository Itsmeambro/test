pipeline {
    agent { docker { image 'maven:3.9.5-eclipse-temurin-17-alpine' } }
    stages {

        stage('Checkout') {
            steps {
                // Checkout source code from your Git repository
                git 'https://github.com/your-username/your-spring-boot-app.git'
            }
        }
        stage('build') {
            steps {
                sh 'mvn --version'
            }
        }
    }
}

pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                // Checkout source code from your Git repository
                git 'https://github.com/your-username/your-spring-boot-app.git'
            }
        }
        
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        
        stage('Deploy') {
            steps {
                sh 'cp target/your-app.war /path/to/tomcat/webapps'
                sh '/path/to/tomcat/bin/shutdown.sh'
                sh '/path/to/tomcat/bin/startup.sh'
            }
        }
    }
}
