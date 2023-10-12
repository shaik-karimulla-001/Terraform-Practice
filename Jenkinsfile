pipeline 
    agent any {
    
    stages {
        stage ('SCM checkout') {
            steps {
               checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/shaik-karimulla-001/Terraform-Practice.git']])     
            }
        }
        
        stage ("terraform init") {
            steps {
                sh "terraform init -reconfigure" 
            }
        }  

        stage ("terraform plan") {
            steps {
                sh "terraform plan"  
            }
        }   
        
        stage ("Action") {
            steps {
                echo "Terraform action is --> ${action}"
                sh "terraform ${action} --auto-approve" 
            }
        }        
    }
}
