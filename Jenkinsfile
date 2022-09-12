pipeline {

  agent any

  stages {

    stage('Deploy WordPress') {
      steps {
        sh 'script.sh'
        sh 'docker rm -f ${docker ps -aq}'
        sh 'docker-compose up -d'
      }
    }
  }
}