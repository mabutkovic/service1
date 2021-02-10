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
                    steps {
                        script {
                            
                                echo "test_1"
                                sh(script: "date -u")

                        }
                    }
                }
                stage('Project2') {
                    steps {
                        script {
                            def group2 = [:]
                            group2["test_3"] = {
                                echo "test_3"
                                sh(script: "date -u")
                            }
                            group2["test_4"] = {
                                echo "test_4"
                                sh(script: "date -u")
                            }
                            parallel group2
                        }
                    }
                }
            }
        }
    }
}