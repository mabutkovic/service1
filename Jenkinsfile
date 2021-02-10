pipeline {
    agent any
    stages {
        stage('Build') {
            stages {
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
                stage('Parallel') {
                    parallel {
                        stage('Project 1') {
                            stage('Deploy to Staging') {
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
                        stage('Project 2') {
                            steps {
                                sh 'ls'
                            }
                        }
                    }
                }
            }
        }
    }
}