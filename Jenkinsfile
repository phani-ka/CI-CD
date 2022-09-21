pipeline {
    agent {
        label 'Centos7'
    }
   tools {
      git 'Default'
  }
   stages('Sci CI/CD pipeline ') {
   

     stage ('Analyzing source code and build ') {
        steps {
          sh 'mvn clean verify sonar:sonar -Dsonar.projectKey=Azure_Devops '
        }
       }
      stage ('code and build') {
        steps {
          sh 'mvn package '
        }
        
   }  
  }
}