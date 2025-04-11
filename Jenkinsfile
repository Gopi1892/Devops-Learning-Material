pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
                script {
                    def branchName = env.BRANCH_NAME
                    echo "🚀 Starting build process for branch: ${branchName}"
                }
            }
        }

        stage('Build Info') {
            steps {
                echo '✅ Multi-branch pipeline execution completed successfully!'
            }
        }
    }
}
