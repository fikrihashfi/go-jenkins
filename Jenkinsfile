pipeline{
    def app
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
                git branch: "${branch}", url: "${scmUrl}"
            }
        }
       stage('Build image') {
            app = docker.build("simple-go-jenkins")
        }
        stage('Test image') {
            app.inside {
                sh 'echo "Tests passed"'
            }
        }
        stage("Deploy"){
            steps{
                sh "echo deploy"
            }
        }
    }
}