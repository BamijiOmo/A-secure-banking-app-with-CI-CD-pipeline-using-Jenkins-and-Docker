pipeline {
    agent any

    stages {
        stage('Build Java App') {
            steps {
                sh 'javac src/main/java/com/banksecure/App.java -d out'
            }
        }

        stage('Run App') {
            steps {
                sh 'java -cp out com.banksecure.App'
            }
        }

        stage('Docker Build') {
            steps {
                script {
                    docker.build('banksecure-image')
                }
            }
        }

        stage('Deploy') {
            steps {
                echo '🚀 Deployment step placeholder — customize for EC2, Kubernetes, or staging server.'
            }
        }
    }
}

