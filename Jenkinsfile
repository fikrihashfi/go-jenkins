pipeline{
    agent any
    environment {
        branch = "master"
        scmUrl = "https://github.com/fikrihashfi/go-jenkins.git"
    }
    stages{
        stage("Checkout"){
            steps{
                git branch: "${branch}", url: "${scmUrl}"
            }
        }
        stage('Build image') {
            sh 'docker build -t simple-docker-jenkins'
        }
        stage('Run Container') {
            sh 'docker run simple-docker-jenkins --name simple-docker-jenkins'
        }
        stage('Check Container') {
            sh 'docker exec -it simple-docker-jenkins echo "Container Running"'
        }
         stage('Stop Container') {
            sh 'docker stop simple-docker-jenkins && docker rm simple-docker-jenkins'
        }
        stage("Deploy"){
            steps{
                sh "echo deploy"
            }
        }
    }
}