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
        stage('Projects') {
            parallel {
                stage('Project1') {
                    steps {
                        script {
                            def group1 = [:]
                            group1["test_1"] = {
                                echo "test_1"
                                sh(script: "date -u")
                            }
                            group1["test_2"] = {
                                echo "test_2"
                                sh(script: "date -u")
                            }
                            parallel group1
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