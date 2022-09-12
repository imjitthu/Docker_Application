pipeline {

  agent any

  stages {

    stage('Deploy WordPress') {
      steps {
        // sh 'sudo chmod +x script.sh; ./script.sh'
        sh 'docker rm -f $(docker ps -aq)'
        sh 'docker-compose up -d'
        sh 'docker-compose ps'
      }
    }
  }
}