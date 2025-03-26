pipeline {
    agent {
        docker {
            image 'python:3.9-slim'
            args '-u root:root'
        }
    }

    environment {
        SELENIUM_GRID_URL = "http://192.168.1.55:4444/wd/hub"
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
                    sh "robot tests/SauceDemo.robot"
                }
            }
        }


    }
}