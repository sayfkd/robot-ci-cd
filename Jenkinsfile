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
                sh  'python3 -m robot templates/login_template.robot'
            }
    }
    }
    post {
        always {
            robot(outputPath: ".",
            passThreshold: 90.0,
            unstableThreshold: 70.0,
            disableArchiveOutput: true,
            outputFileName: "output.xml",
            logFileName: 'log.html',
            reportFileName: 'report.html',
            countSkippedTests: true,    // Optional, defaults to false
            otherFiles: 'screenshot-*.png')
        }
    }
}