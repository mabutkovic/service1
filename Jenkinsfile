pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                script {
                    sh(script: "date -u")
                }
            }
        }
        stage('Unit Test') {
            steps {
                script {
                    sh(script: "date -u")
                }
            }
        }
        stage('Integration Test') {
            steps {
                script {
                    sh(script: "date -u")
                }
            }
        }
        stage('Publish Artifact') {
            steps {
                script {
                    sh(script: "date -u")
                }
            }
        }
        stage('Projects') {
            parallel {
                stage('Project1') {
                    stages {
                        stage('Non-Parallel Stage') {
                            steps {
                                echo "Executing this stage first"
                            }
                        }
                    }
                }
                stage('Project2') {
                    steps {
                        script {
                            echo "test_2"
                            sh(script: "date -u")
                        }
                    }
                }
            }
        }
    }
}