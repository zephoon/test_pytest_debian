pipeline {
    agent {
        docker { 
            image 'dpython:0.0.2' 
        }
    }
    stages {
        stage('Test') {
            steps {
                sh """
                python3 --version
                cd ${workspace}
                venv ${workspace}/env
                . env/bin/activate
                pip install -r requirements.txt --break-system-packages
                pytest
                """
            }
        }
    }
}
