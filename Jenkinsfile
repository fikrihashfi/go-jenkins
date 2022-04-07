pipeline{
    agent any
    environment {
        root = "/usr/local/go/bin/go"
        branch = "master"
        scmUrl = "https://github.com/fikrihashfi/go-jenkins.git"
    }
    stages{
        stage("preTest"){
            steps{
                sh "${root} version"
            }
        }
        stage("Checkout"){
            steps{
                git url: "${branch}", url: "${scmUrl}"
            }
        }
        stage("Test"){
            steps{
                sh "${root} test ./... -cover"
            }
        }
        stage("Build"){
            steps{
                sh "${root} build ./..."
            }
        }
        stage("Deploy"){
            steps{
                sh "echo deploy"
            }
        }
    }
}