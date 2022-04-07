pipeline{
    agent any
    environment {
        branch = "master"
        scmUrl = "https://github.com/fikrihashfi/go-jenkins.git"
    }
    stages{
        stage("User Check"){
            steps{
                sh 'whoami'
            }
        }
        stage("Checkout"){
            steps{
                git branch: "${branch}", url: "${scmUrl}"
            }
        }
        stage('Build image') {
            steps{
                sh 'docker build . -t simple-docker-jenkins'
            }
        }
        stage('Run Container') {
            steps{
                sh 'docker run --rm --name simple-docker-jenkins simple-docker-jenkins'
            }
        }
        stage("Deploy"){
            steps{
                sh "echo deploy"
            }
        }
    }
}