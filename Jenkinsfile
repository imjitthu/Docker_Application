pipeline {

  agent any

  stages {

    stage('Deploy WordPress') {
      steps {
        sh 'curl -sSL https://raw.githubusercontent.com/bitnami/containers/main/bitnami/discourse/docker-compose.yml > docker-compose.yml'
        // sh 'docker rm -f $(docker ps -aq)'
        sh 'docker-compose up -d'
        sh 'docker-compose ps'
      }
    }
  }
}