pipeline {
  agent any
 
  environment {
    DOCKER_REGISTRY = "Registry.com"
    DOCKER_REGISTRY_CREDENTIALS = credentials("Registry_Credentials")
  }
 
  stages {
    stage('Check') {
      steps {
        checkout scm
      }
    }
 
    stage('Work with images') {
      steps {
        sh 'docker-compose build'
        sh 'docker-compose push'
      }
    }
 
    stage('Open out') {
      steps {
        script {
          sh 'ssh example@example.com "docker-compose pull && docker-compose up -d"'
        }
      }
    }
  }
}