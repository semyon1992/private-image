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
                   
                 echo "Hello ${params.TAG}"
                echo "Biography: ${params.DockerCred}"
                echo "Toggle: ${params.NodeJsVersion}"
                sh "docker build -t jsapp:${params.TAG} .    --build-arg  NODE_VERSION=${params.NodeJsVersion} --no-cache"
                ////app = docker.build("semyonb20/jsapp")
                // docker.build("semyonb20/jsapp")
                //additionalBuildArgs("--build-arg  NODE_VERSION=\${params.NodeJsVersion}")
                 
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