pipeline {
    agent {
  label {
    label 'rhel'
    retries 3
  }
}
    stages {
        stage('Test') {
            steps {
                echo 'OS Info'
                sh 'ssh sp@192.168.60.135 bash usage.sh'
            }
        }
    }
}
