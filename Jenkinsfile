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
                sh 'cat /etc/os-release'
                echo 'Resource Usage Info'
                sh 'scp /root/jenkins-agent/workspace/usingGIT/usage.sh sp@192.168.60.135:~/'
                sh 'ssh sp@192.168.60.135 bash /home/sp/usage.sh'
            }
        }
    }
}
