pipeline {
    agent any

    stages {
        stage('Print Message') {
            steps {
                script {
                    def branchName = env.BRANCH_NAME
                    echo "Building branch: ${branchName}"
                    echo 'Hello! Multi branch pipeline file is successful'
                }
            }
        }
    }
}
