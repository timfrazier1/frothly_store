pipeline {
    environment {
        registry = "k8tan/"
        container = "admin_frontend"
        registryCredential = 'e29c9663-c835-415c-8a2b-1b8a23ae9583'
        dockerImage = ''
    }
    agent any
    stages {
        stage('Cloning our Git') {
            steps {
                git 'https://github.com/k8tan/frothly_store'
            }
        }
        stage('Building our admin_frontend image') {
            steps{
                script {
                    dockerImage = docker.build(registry + container + ":$BUILD_NUMBER", "./$container")
                }
            }
        }
        stage('Deploy our image') {
            steps{
                script {
                    docker.withRegistry( 'https://registry.hub.docker.com', registryCredential ) {
                        dockerImage.push()
                    }
                }
            }
        }
        stage('Cleaning up') {
            steps{
                sh "docker rmi $registry$container:$BUILD_NUMBER"
            }
        }
    }
}
