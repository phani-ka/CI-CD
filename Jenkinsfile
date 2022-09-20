pipeline {
    agent  { label 'maven_terraform' } 

    stages {
        stage ('Compile Stage') {

            steps {
               
                    sh 'terraform init'
               
            }
        }

        

        stage('Deployment Stage') {
            steps {
                 sh '''
                 terraform destroy
                 '''
                 
            }
        }
    }
}
