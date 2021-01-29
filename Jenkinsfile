pipeline {
    environment {
        registry = "k8tan/"
        registryCredential = 'e29c9663-c835-415c-8a2b-1b8a23ae9583'
        dockerImage = ''
    }
    agent any
    stages {
        stage('Cloning Frothly Store Git') {
            steps {
                git 'https://github.com/k8tan/frothly_store'
            }
        }
        stage('Building the docker images for all services') {
            steps{
                script {
                    // build_all(all_containers);
                    admin_frontend_dockerImage = docker.build(registry + "admin_frontend:$BUILD_NUMBER", "./admin_frontend")
                    web_frontend_dockerImage = docker.build(registry + "web_frontend:$BUILD_NUMBER", "./web_frontend")
                    cart_db_dockerImage = docker.build(registry + "cart_db:$BUILD_NUMBER", "./cart_db")
                    cart_microservice_dockerImage = docker.build(registry + "cart_microservice:$BUILD_NUMBER", "./cart_microservice")
                    orders_db_dockerImage = docker.build(registry + "orders_db:$BUILD_NUMBER", "./orders_db")
                    orders_microservice_dockerImage = docker.build(registry + "orders_microservice:$BUILD_NUMBER", "./orders_microservice")
                    product_db_dockerImage = docker.build(registry + "product_db:$BUILD_NUMBER", "./product_db")
                    product_microservice_dockerImage = docker.build(registry + "product_microservice:$BUILD_NUMBER", "./product_microservice")
                }
            }
        }
        stage('Push Docker Images to DockerHub') {
            steps{
                script {
                    docker.withRegistry( 'https://registry.hub.docker.com', registryCredential ) {
                        admin_frontend_dockerImage.push()
                        web_frontend_dockerImage.push()
                        cart_db_dockerImage.push()
                        cart_microservice_dockerImage.push()
                        orders_db_dockerImage.push()
                        orders_microservice_dockerImage.push()
                        product_db_dockerImage.push()
                        product_microservice_dockerImage.push()
                    }
                }
            }
        }
        stage('Cleaning up docker images') {
            steps{
                sh "docker rmi k8tan/web_frontend:$BUILD_NUMBER"
                sh "docker rmi k8tan/admin_frontend:$BUILD_NUMBER"
                sh "docker rmi k8tan/cart_db:$BUILD_NUMBER"
                sh "docker rmi k8tan/cart_microservice:$BUILD_NUMBER"
                sh "docker rmi k8tan/orders_db:$BUILD_NUMBER"
                sh "docker rmi k8tan/orders_microservice:$BUILD_NUMBER"
                sh "docker rmi k8tan/product_db:$BUILD_NUMBER"
                sh "docker rmi k8tan/product_microservice:$BUILD_NUMBER"
            }
        }
        stage('Re-deploy fresh images to Kubernetes') {
            steps{
                withKubeConfig([credentialsId: 'kubeconfig-frothly-eks']) {
                    sh 'kubectl get nodes'
                }
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
