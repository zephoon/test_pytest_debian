pipeline {
    agent {
        /usr/local/bin/docker { image 'dpython:latest' }
    }
    stages {
        stage('Test') {
            steps {
                sh 'python --version'
            }
        }
    }
}
