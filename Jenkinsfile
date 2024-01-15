#!/usr/bin/env groovy
pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                script {
                    echo "building an image..."
                }
            }
        }

        stage('Deploy') {
            environment {
                AWS_ACCESS_KEY_ID = credentials('jenkins_aws_access_key_id')
                AWS_SECRET_ACCESS_KEY = credentials('jenkins_aws_secret_access_key')
            }
            steps {
                script {
                    echo 'Deploying the application...'
                    sh "/usr/local/bin/aws-iam-authenticator kubectl create deployment nginx-deployment --image=nginx"
                }
            }
        }
    }
}
