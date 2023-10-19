pipeline {
    agent any

    stages {
        stage('SCM Checkout') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'github', url: 'https://github.com/shaik-karimulla-001/Terraform-Practice.git']])
            }
        }
        
        stage ("terraform init") {
            steps {
                sh ("terraform init -reconfigure")
            }
            
        }
        
        stage ("terraform plan") {
            steps {
                sh ("terraform plan")
            }
            
        }

        stage ("action") {
            steps {
                echo "Terraform action is --> $ {action}"
                sh ("terraform ${action} -lock=false --auto-approve")
            }   

        }

    }
}
