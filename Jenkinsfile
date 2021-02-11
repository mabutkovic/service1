pipeline {
    agent any
    stages {
        environment {
            VERSION_NUMBER = sh(script: 'cat version.txt ', returnStdout: true).trim()
        }
        stage('Build') {
            steps {
                script {
                    sh(script: "source /etc/profile; docker build . -t mabutkovic/service1:$VERSION_NUMBER")
                    sh(script: "source /etc/profile; docker push mabutkovic/service1:$VERSION_NUMBER")
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
                                sh(script: "source /etc/profile; helm upgrade --set version=$VERSION_NUMBER -f service1-workflow/values.p1.staging.yaml p1-staging-service1-workflow ./service1-workflow")
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
                                sh(script: "source /etc/profile; helm upgrade --set version=$VERSION_NUMBER -f service1-workflow/values.p1.prod.yaml p1-prod-service1-workflow ./service1-workflow")
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