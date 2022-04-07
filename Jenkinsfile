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
            steps{
                sh 'docker build . -t simple-docker-jenkins'
            }
        }
        stage('Run Container') {
            steps{
                sh 'docker run simple-docker-jenkins --name simple-docker-jenkins'
            }
        }
        stage('Check Container') {
            steps{
                sh 'docker exec -it simple-docker-jenkins echo "Container Running"'
            }
        }
         stage('Stop Container') {
            steps{
                sh 'docker stop simple-docker-jenkins && docker rm simple-docker-jenkins'
            }
        }
        stage("Deploy"){
            steps{
                sh "echo deploy"
            }
        }
    }
}