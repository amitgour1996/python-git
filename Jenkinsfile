pipeline {
    agent { label 'k8s-worker-small' }

    stages {
        stage('First') {
            steps {
                sh 'scripts/getPython.sh'
            }
        }
    }
}
