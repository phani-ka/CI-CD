pipeline {
    agent any

    stages {
        stage ('Compile Stage') {

            steps {
               
                    sh 'terraform --version'
               
            }
        }

        

        stage('Deployment Stage') {
            steps {
                 sh 'terraform init'
            }
        }
    }
}
