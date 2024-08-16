pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                // Get some code from a GitHub repository
                git url: 'https://github.com/ShailAdmin/SampleRegistratonForm.git', branch: 'master'
                sh 'mvn --version'
                sh 'mvn compile'
                sh 'mvn test'
                sh 'mvn package'
                sh 'mvn install'
            }
        }
    }
}