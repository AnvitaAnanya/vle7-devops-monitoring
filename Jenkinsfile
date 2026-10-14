pipeline {
    agent any

    options {
        timestamps()
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t vle7-web:latest .'
            }
        }

        stage('Load Image into Minikube') {
            steps {
                sh 'minikube image load vle7-web:latest'
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                sh 'kubectl apply -f deployment.yaml'
                sh 'kubectl rollout status deployment/vle7-web --timeout=120s'
                sh 'kubectl get deployments,services'
            }
        }
    }
}
