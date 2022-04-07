node {
    // Ensure the desired Go version is installed
    def root = "/usr/local/go"

    // Export environment variables pointing to the directory where Go was installed
    withEnv(["GOROOT=${root}", "PATH+GO=${root}/bin"]) {

        stage 'Checkout'
        git url: 'https://github.com/fikrihashfi/go-jenkins.git'

        stage 'preTest'
        sh 'go version'

        stage 'Test'
        sh 'go test -cover'

        stage 'Build'
        sh 'go build .'

        stage 'Deploy'
    }
}