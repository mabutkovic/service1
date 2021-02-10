pipeline {
    agent none
    stages {
        stage('Run Tests') {
            parallel {
                stage('Test1') {
                    agent {
                        label "project1"
                    }
                    steps {
                        sh "ls"
                    }
                    
                }
                stage('Test2') {
                    agent {
                        label "project2"
                    }
                    steps {
                        sh "ls"
                    }

                }
            }
        }
    }
}