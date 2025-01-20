pipeline {
    agent {
        label 'linux_minit'
    }
 stages('Sci CI/CD pipeline ') {
     stage ('Analyzing source code and build ') {
        steps {
           
          sh 'mvn clean verify '
          }
        
       }
      stage ('code build and Code containerization') {
        steps {
          sh '''
          mvn package
          docker build -t webapp:0.$BUILD_NUMBER .
            '''
        }        
   } 
     
  }
}
