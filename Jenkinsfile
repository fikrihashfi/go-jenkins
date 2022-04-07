pipeline{
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
            docker.build("simple-go-jenkins")
        }
        stage('Test image') {
            sh 'echo "Tests passed"'
        }
        stage("Deploy"){
            steps{
                sh "echo deploy"
            }
        }
    }
}