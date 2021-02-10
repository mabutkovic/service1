pipeline {
    agent any
    stages {
        stage('Build') {
            environment {
                VERSION_NUMBER = sh(script: 'cat version.txt ', returnStdout: true).trim()
            }
            steps {
                script {
                    sh(script: "source /etc/profile; docker build . -t mbutkovic/service1")
                    sh(script: "source /etc/profile; docker push mabutkovic/service1")
                    sh(script: "source /etc/profile; echo $VERSION_NUMBER")
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
                        stage('Deploy to Staging') {
                            steps {
                                echo "Executing this stage first"
                            }
                        }
                        stage('Smoke Test') {
                            steps {
                                echo "Executing this stage first"
                            }
                        }
                        stage('End to End Test') {
                            steps {
                                echo "Executing this stage first"
                            }
                        }
                        stage('Deploy to Production') {
                            steps {
                                echo "Executing this stage first"
                            }
                        }
                    }
                }
                stage('Project2') {
                    stages {
                        stage('Deploy to Staging') {
                            steps {
                                echo "Executing this stage first"
                            }
                        }
                        stage('Smoke Test') {
                            steps {
                                echo "Executing this stage first"
                            }
                        }
                        stage('End to End Test') {
                            steps {
                                echo "Executing this stage first"
                            }
                        }
                        stage('Deploy to Production') {
                            steps {
                                echo "Executing this stage first"
                            }
                        }
                    }
                }
            }
        }
    }
}