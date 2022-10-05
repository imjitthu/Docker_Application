pipeline {

  agent any

  stages {

    stage('Deploy WordPress') {
      steps {
        sh 'id'
        // sh 'sudo chmod +x ./launcher; ./launcher bootstrap app'
        sh 'docker-compose up -d'
        // sh 'docker-compose ps';
      }
    }
  }
}