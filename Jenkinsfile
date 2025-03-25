pipeline {
    agent {
        docker {
            image 'python:-slim'
        }
    }


    stages {
               stage('Install Dependencies') {
            steps {
                    sh 'pip install -r requirements.txt'
            }
        }

         stage('Run Tests') {
            steps {
                script {
                    sh "python -m robot tests/SauceDemo.robot"
                }
            }
        }


    }
}