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
                //sh 'bash usage.sh'
                sh 'scp /root/jenkins-agent/workspace/usingGIT/usage.sh sp@192.168.60.135:~/'
                sh 'ssh sp@192.168.60.135 bash ~/usage.sh'
            }
        }
    }
}
