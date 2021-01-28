pipeline {
    environment {
        registry = "k8tan/"
        container = "admin_frontend"
        all_containers = ['admin_frontend', 'web_frontend']
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
        stage('Building our docker images') {
            steps{
                script {
                    build_all(all_containers);
                    // dockerImage = docker.build(registry + container + ":$BUILD_NUMBER", "./$container")
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

@NonCPS
def build_all(list) {
    list.each { item ->
        ${item}_dockerImage = docker.build(registry + ${item} + ":$BUILD_NUMBER", "./${item}")
    }
}
