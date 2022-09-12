pipeline {

  agent any

  stages {

    stage('Deploy WordPress') {
      steps {
        sh 'docker-compose up -d'
      }
    }
  }
}