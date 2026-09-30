pipeline{
    agent any
    stages{
        stage('build'){
            steps{
                sh "docker build -t mokhaled13/nginx_jenkins_test:${env.BUILD_NUMBER} ."
                withCredentials([usernamePassword(credentialsId: 'DockerID', passwordVariable: 'pass', usernameVariable: 'user')]) {
                sh "docker login -u $user -p '$pass'"
                sh "docker push mokhaled13/nginx_jenkins_test:${env.BUILD_NUMBER}"
                }
            }
        }
        stage('deploy'){
            steps{
                sh "docker run -d -p 80:80 mokhaled13/nginx_jenkins_test:${env.BUILD_NUMBER}"
            }
        }
    }
}
