pipeline {

  agent any

  stages {

    stage('Deploy WordPress') {
      steps {
        sh 'rm -f haproxy.cfg; cp haproxy.cfg /etc/haproxy/haproxy.cfg'
        // sh 'sudo chmod +x script.sh; ./script.sh'
        // sh 'docker rm -f $(docker ps -aq)'
        sh 'docker-compose up -d'
        sh 'docker-compose ps'
      }
    }
  }
}