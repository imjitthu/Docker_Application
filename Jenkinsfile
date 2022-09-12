pipeline {

  agent any

  stages {

    stage('Deploy WordPress') {
      steps {
        sh 'curl -sSLo nginx-conf/options-ssl-nginx.conf https://raw.githubusercontent.com/certbot/certbot/master/certbot-nginx/certbot_nginx/_internal/tls_configs/options-ssl-nginx.conf'
        sh 'id; sudo chmod +x script.sh; ./script.sh'
        sh 'docker rm -f $(docker ps -aq)'
        sh 'docker-compose up -d'
        sh 'docker-compose ps'
      }
    }
  }
}