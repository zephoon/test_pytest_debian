pipeline {
    agent {
        docker { 
            image 'dpython:0.0.1' 
        }
    }
    stages {
        stage('Test') {
            steps {
                sh """
                python3 --version
                cd ${workspace}
                virtualenv venv
                . venv/bin/activate
                pip install -r requirements.txt --break-system-packages
                pytest
                """
            }
        }
    }
}
