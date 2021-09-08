pipeline {
    agent { label 'k8s-worker-small' }
    parameters {
        string(name: 'repoURL', defaultValue: 'https://git.ellucian.com/scm/dpe/appd-ansible-play.git', description: 'Git Repository URL?')
    }
    stages {
        stage('Second') {
            steps {
                sh 'chmod +x scripts/listFolder.sh'
                sh '/bin/bash scripts/listFolder.sh ${params.repoURL}'
                archiveArtifacts artifacts: '**/output.txt', followSymlinks: false, onlyIfSuccessful: true
            }
        }
    }
}
