pipeline {
    agent any

    tools {
      
      nodejs "node-16"
    }

    stages {
         stage("Clean Workspace"){
            steps{
                cleanWs()
            }
        }
        
        stage("Checkout") {
            steps {
                git branch: 'main', url: 'https://github.com/Himalaya7087/Docker-Project-Node.git', credentialsId:'PASS'
            }
        }
        
        
        
        stage('Create-Image') {
            steps {
            
                // Run Maven on a Unix agent.
                sh "docker build . -t node-image"
            }

            
        }
        

        
      

     
    }
}
