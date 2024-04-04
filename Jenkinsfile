pipeline {
    agent {
        docker { 
            image 'dpython:0.0.1' 
        }
    }
    stages {
        stage('Test') {
            steps {
                sh 'python3 --version'
                sh 'cd ${workspace}'
                sh 'virtualenv venv'
                sh '. venv/bin/activate'
                sh 'pip install -r requirements.txt --break-system-packages'
                sh 'pytest'
            }
        }
    }
}
