pipeline {
    agent any
    stages {
        stage('single run') {
            parallel {
                stage('Project 1') {
                    steps {
                        sh 'ls'
                    }
                }
                stage('Project 2') {
                    steps {
                        sh 'ls'
                    }
                }
            }
        }
    }
}