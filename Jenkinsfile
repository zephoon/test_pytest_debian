pipeline {
    agent {
        docker { image 'dpython:latest' }
    }
    stages {
        stage('Test') {
            steps {
                sh 'python --version'
            }
        }
    }
}
