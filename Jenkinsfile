pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                script {
                    sh(script: "source /etc/profile; docker container ls")
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