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
                sh 'virtualenv venv'
                sh '. venv/bin/activate'
                sh 'pip install -r requirements.txt --break-system-packages'
                sh 'pytest'
            }
        }
    }
}
