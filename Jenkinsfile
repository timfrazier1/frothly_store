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
                    // build_all(all_containers);
                    admin_frontend_dockerImage = docker.build(registry + "admin_frontend:$BUILD_NUMBER", "./admin_frontend")
                    web_frontend_dockerImage = docker.build(registry + "web_frontend:$BUILD_NUMBER", "./web_frontend")
                }
            }
        }
        stage('Deploy our image') {
            steps{
                script {
                    docker.withRegistry( 'https://registry.hub.docker.com', registryCredential ) {
                        admin_frontend_dockerImage.push()
                        web_frontend_dockerImage.push()
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

/*
@NonCPS
def build_all(list) {
    list.each { item ->
        ${item} + dockerImage = docker.build(registry + ${item} + ":$BUILD_NUMBER", "./${item}")
    }
}
*/
