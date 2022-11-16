pipeline{
    agent any 
    stages{
        stage("cloning ..."){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/devopsPRO27/requests']]])

            }
        }
        stage("building ..."){
            steps{
                sh 'python3 http_e.py'
            }
        }
        stage("testing ..."){
            steps{
                sh 'pytest TestRest.py'
            }
        }
    }
}
    post{
        agent {
            docker{image 'docker'}
        }
        success{
            sh 'docker build -t requestsfromjenkins .'
        }
        
    }
}
  
