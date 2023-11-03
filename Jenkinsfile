pipeline {
    agent any

    stages {
        stage('SCM Checkout') {
            steps {
                script {
                    // Checkout the code from the Git repository
                    checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/shaik-karimulla-001/Terraform-Practice.git']])
                }
            }
        }

        stage("Terraform Init") {
            steps {
                // Initialize Terraform with reconfiguration
                sh "terraform init -reconfigure"
            }
        }

        stage("Terraform Plan") {
            steps {
                // Run Terraform plan
                sh "terraform plan"
            }
        }

        stage("Terraform Action") {
            steps {
                echo "Terraform action is --> ${action}"
                // Run Terraform with the specified action (apply/destroy/etc.)
                sh "terraform ${action} -lock=false --auto-approve"
            }
        }
    }
}
