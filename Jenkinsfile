pipeline {
    agent any

    environment {
        // Define Docker image name
        DOCKER_IMAGE = 'my-java-app:latest'
    }

    stages {
        stage('Checkout') {
            steps {
                // Clone the repository
                git branch: 'main', url: 'https://github.com/nithyapandurangan/devops-endsem-lab.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                // Build the Docker image
                script {
                    docker.build(DOCKER_IMAGE)
                }
            }
        }

        stage('Run Maven Build Lifecycle') {
            steps {
                // Run Maven commands inside the Docker container
                script {
                    docker.image(DOCKER_IMAGE).inside {
                        sh 'mvn clean compile test package'
                    }
                }
            }
        }
    }

    post {
        success {
            echo 'Build, Test, and Package phases completed successfully.'
        }
        failure {
            echo 'There was an issue with the build process.'
        }
    }
}

