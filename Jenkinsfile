pipeline {
    agent any

<<<<<<< HEAD
    stages {

        stage('Init') {
            steps {
                bat 'terraform init -migrate-state -backend-config="bucket=terraform-state-devopslearn" -backend-config="prefix=terraform/state"'
            }
        }
=======
    environment {
        TF_BUCKET = "terraform-state-devopslearn"
        TF_PREFIX = "terraform/state"
    }

    stages {
>>>>>>> b8219084889aa01231cb2aa74289576757f53dd9

        stage('Terraform Init') {
            steps {
                bat """
                terraform init -reconfigure ^
                -backend-config="bucket=%TF_BUCKET%" ^
                -backend-config="prefix=%TF_PREFIX%"
                """
            }
        }

        stage('Terraform Validate') {
            steps {
                bat 'terraform validate'
            }
        }

        stage('Terraform Plan') {
            steps {
                bat 'terraform plan -out=tfplan'
            }
        }

        stage('Terraform Apply') {
            steps {
<<<<<<< HEAD
                bat 'terraform apply -auto-approve'
=======
                bat 'terraform apply -auto-approve tfplan'
>>>>>>> b8219084889aa01231cb2aa74289576757f53dd9
            }
        }
    }

    post {
        success {
            echo 'VM created successfully 🚀'
        }
        failure {
            echo 'Pipeline failed ❌'
        }
    }
}
