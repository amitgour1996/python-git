pipeline {
    agent { label 'ec2-worker-u18-medium' }
    parameters {
        string(name: 'repoURL', defaultValue: 'https://git.ellucian.com/scm/dpe/appd-ansible-play.git', description: 'Git Repository URL?')
    }
    stages {
        stage('First') {
            steps {
                sh 'chmod +x scripts/getPython.sh'
                sh 'scripts/getPython.sh'
            }
        }
        stage('Second') {
            steps {
                sh 'chmod +x scripts/listFolder.sh'
                sh '/bin/bash scripts/listFolder.sh $repoURL'
                archiveArtifacts artifacts: '**/output.txt', followSymlinks: false, onlyIfSuccessful: true
            }
        }
    }
}
