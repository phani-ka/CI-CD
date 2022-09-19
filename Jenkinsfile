pipeline {
    agent any

    stages {
        stage ('Compile Stage') {

            steps {
               
                    sh 'ls -al  && java --version && top'
               
            }
        }

        

        stage('Deployment Stage') {
            steps {
                 sh 'terraform --version'
            }
        }
    }
}
