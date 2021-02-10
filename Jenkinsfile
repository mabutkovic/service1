pipeline {
    agent any
    stages {
        stage('Parallel Stage') {
            parallel(
                    stages {
                        stage('Build') {
                            // project 1
                            // pull git
                            // build dockerfile image
                            // push image
                            // apply deployment on k8s dev
                            steps {
                                sh 'ls -la'
                            }
                        }
                        stage('Unit Test') {
                            steps {
                                sh 'ls'
                            }
                        }
                        stage('Integration Test') {
                            steps {
                                sh 'ls'
                            }
                        }
                        stage('Publish Artifact') {
                            steps {
                                sh 'ls'
                            }
                        }
                        stage('Deploy to staging') {
                            steps {
                                sh 'ls'
                            }
                        }
                        stage('Smoke Test') {
                            steps {
                                sh 'ls'
                            }
                        }
                        stage('End to End Test') {
                            steps {
                                sh 'ls'
                            }
                        }
                        stage('Deploy to Production ') {
                            steps {
                                sh 'ls'
                            }
                        }
                    },
                    stages {
                        stage('Build') {
                            // project 2
                            // pull git
                            // build dockerfile image
                            // push image
                            // apply deployment on k8s dev
                            steps {
                                sh 'ls -la'
                            }
                        }
                        stage('Unit Test') {
                            steps {
                                sh 'ls'
                            }
                        }
                        stage('Integration Test') {
                            steps {
                                sh 'ls'
                            }
                        }
                        stage('Publish Artifact') {
                            steps {
                                sh 'ls'
                            }
                        }
                        stage('Deploy to staging') {
                            steps {
                                sh 'ls'
                            }
                        }
                        stage('Smoke Test') {
                            steps {
                                sh 'ls'
                            }
                        }
                        stage('End to End Test') {
                            steps {
                                sh 'ls'
                            }
                        }
                        stage('Deploy to Production') {
                            steps {
                                sh 'ls'
                            }
                        }
                    }
            )
        }
    }
}