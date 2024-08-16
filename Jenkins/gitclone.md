pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                // Get some code from a GitHub repository
                git url: 'https://github.com/Teq516/SampleRegistratonForm.git', branch: 'main'
                }
        }
    }
}