pipeline {
    agent any
    parameters {
        string(name: 'TAG', defaultValue: 'v0.1a', description: 'tag for docker container')
        string(name: 'DockerCred', defaultValue: 'semyonb20', description: 'credential name from jenkins secrets that is used to push docker image')
        string(name: 'NodeJsVersion', defaultValue: 'semyonb20', description: 'Node js version supported values: https://hub.docker.com/_/node')
    }
    stages {
        stage('Example') {
            stage('Clone repository') {
                checkout scm
            }
            steps {
                echo "Hello ${params.TAG}"
                echo "Biography: ${params.DockerCred}"
                echo "Toggle: ${params.NodeJsVersion}"
            }
        }
    }
}