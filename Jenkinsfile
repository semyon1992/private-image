node {    
      def app     
    stage('Clone repository') {
          checkout scm    
      }
    stage('Build image') {         
            app = docker.build("semyonb20/jsapp")    
       }           
      
    stage('Push image') {
        docker.withRegistry('https://registry.hub.docker.com', 'semyonb20') {
            app.push("${env.BUILD_NUMBER}")            
            app.push("latest")        
        }    
    }
}
