pipeline {
  agent any

  stages {

    stage('Checkout Source') {
      steps {
        git 'https://github.com/Sathiyan97/nodeapp_test.git'
      }
    }

    stage('Build image') {
      steps{
        script {
          dockerImage = "nodeapp"
        }
      }
    }

    // stage('Pushing Image') {
    //   environment {
    //            registryCredential = 'Dockerhub'
    //        }
    //   steps{
    //     script {
    //       docker.withRegistry( 'https://registry.hub.docker.com', registryCredential ) {
    //         dockerImage.push("latest")
    //       }
    //     }
    //   }
    // }

    stage('Deploying App to Kubernetes') {
      steps {
        script {
          kubernetesDeploy(configs: "deploymentservice.yml", kubeconfigId: "kubernetes")
        }
      }
    }

  }

}
