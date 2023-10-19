pipeline {
    agent any

    environment {
        action = 'apply' // Set your default action here
    }

    stages {
        stage('SCM Checkout') {
            steps {
                script {
                    checkout([$class: 'GitSCM', branches: [[name: '*/main']],
                        userRemoteConfigs: [[credentialsId: 'github', url: 'https://github.com/shaik-karimulla-001/Terraform-Practice.git']]])
                }
            }
        }
        
        stage("terraform init") {
            steps {
                sh "terraform init -reconfigure"
            }
        }
        
        stage("terraform plan") {
            steps {
                sh "terraform plan"
            }
        }

        stage("Terraform Action") {
            steps {
                echo "Terraform action is --> ${action}"
                sh ("terraform ${action} -lock=false --auto-approve")
            }
        }
    }
}
