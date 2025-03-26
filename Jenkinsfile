pipeline {
    agent {
        docker {
            image 'ppodgorsek/robot-framework'
        }
    }

    stages {
        stage('Install python'){
                steps {
                sh'pip freeze > requirements.txt'
                sh ' python3 -m pip install -r requirements.txt'
            }
        }
    
    stage('Run Selenium Tests') {
            steps {
                // Exécution des tests avec Selenium
                sh  'python3 -m robot tests/test_temp.robot'
            }
    }
    }

}