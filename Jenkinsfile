pipeline {
    agent any

    stages {
        stage ('Compile Stage') {

            steps {
               
                    sh 'ls -al  && java --version '
               
            }
        }

        

        stage ('Deployment Stage') {
            steps {
                 sh 'terraform --version'
            }
        }
    }
}
