pipeline {
    agent any
    parameters {
        string(name: 'TAG', defaultValue: 'v0.1a', description: 'tag for docker container')
        string(name: 'DockerCred', defaultValue: 'semyonb20', description: 'credential name from jenkins secrets that is used to push docker image')
        string(name: 'NodeJsVersion', defaultValue: '12', description: 'Node js version supported values: https://hub.docker.com/_/node')
    }
    stages {
        stage('Clone repository') {
            steps {
                checkout scm
            }
        }
        stage('Build image') {
            
            steps {
                script {
                    docker.build("semyonb20/jsapp:${params.TAG}", "--build-arg  NODE_VERSION=${params.NodeJsVersion} .").withRegistry('https://registry.hub.docker.com', 'semyonb20').push("${params.TAG}").push("latest")
                }
            }
        }
        stage('Example') {

            steps {
                echo "Hello ${params.TAG}"
                echo "Biography: ${params.DockerCred}"
                echo "Toggle: ${params.NodeJsVersion}"
            }
        }
    }
}