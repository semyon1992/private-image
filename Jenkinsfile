 
pipeline {
    agent any
        parameters {
            string(name: 'TAG', defaultValue: 'v0.1a', description: 'tag for docker container')
            string(name: 'DockerCred', defaultValue: 'semyonb20', description: 'credential name from jenkins secrets that is used to push docker image')
            string(name: 'NodeJsVersion', defaultValue: 'semyonb20', description: 'Node js version supported values: https://hub.docker.com/_/node')
        }
    stages {
        stage('Clone repository') {
            checkout scm
        }
        stage('Build image') {
            //app = docker.build("semyonb20/jsapp")


            docker.build("semyonb20/jsapp", "--build-arg  NODE_VERSION=\${params.NodeJsVersion}")

            //additionalBuildArgs("--build-arg  NODE_VERSION=\${params.NodeJsVersion}")

        }
        stage('Push image') {
            docker.withRegistry('https://registry.hub.docker.com', 'semyonb20') {
                app.push("${params.TAG}")
                app.push("latest")
            }

        }
    }
}