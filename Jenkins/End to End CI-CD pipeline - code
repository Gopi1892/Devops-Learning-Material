pipeline {
    agent any

    stages {
        stage('Run Command on Remote Server') {
            steps {
                // Use the SSH agent with the credentials stored in Jenkins
                sshagent(['ssh']) {
                    sh 'ssh -o StrictHostKeyChecking=no ubuntu@100.25.130.59 "date"'
                    sh 'ssh -o StrictHostKeyChecking=no ubuntu@100.25.130.59 "hostname"'
                }
            }
        }
        stage('Install web server') {
            steps {
                // Use the SSH agent with the credentials stored in Jenkins
                sshagent(['ssh']) {
                    sh 'ssh -o StrictHostKeyChecking=no ubuntu@100.25.130.59 "sudo apt-get install apache2 -y"'
                    sh 'ssh -o StrictHostKeyChecking=no ubuntu@100.25.130.59 "sudo service apache2 start"'
                }
            }
        }
    }
}
