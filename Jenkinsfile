pipeline {
    agent { label 'k8s-worker-small' }

    stages {
        stage('First') {
            steps {
                sh 'chmod +x scripts/getPython.sh'
                sh 'scripts/getPython.sh'
            }
        }
    }
}
