pipeline {
    agent {
        docker { 
            image 'dpython:latest' 
        }
    }
    stages {
        stage('Test') {
            steps {
                sh 'python3 --version'
            }
        }
    }
}
