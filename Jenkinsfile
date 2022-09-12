pipeline {

  agent any

  options {
    copyArtifactPermission 'test-pipeline'
    durabilityHint 'MAX_SURVIVABILITY'
  }
  stages {

    stage('frontend') {
      steps {
        powershell 'dir'
        archiveArtifacts artifacts: '*.*', followSymlinks: false, onlyIfSuccessful: true
        powershell 'dir'
      }
    }
  }
}