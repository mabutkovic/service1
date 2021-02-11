def list_projects = ["p1", "p2"]
def list_environments = ["staging", "prod"]
pipeline {
    agent any
    environment {
        VERSION_NUMBER = sh(script: 'cat version.txt ', returnStdout: true).trim()
    }
    stages {
        stage('Build') {
            steps {
                script {
                    sh(script: "source /etc/profile; docker build . -t mabutkovic/service1:$VERSION_NUMBER")
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
                    sh(script: "source /etc/profile; docker push mabutkovic/service1:$VERSION_NUMBER")
                }
            }
        }
        stage('Deployment Stage') {

            steps {
                script {
                    for (int i = 0; i < list_projects.size(); i++) {
                        for (int j = 0; j < list_environments.size(); j++) {
                            stages {
                                stage(list_projects[i] + list_environments[j] + ' Deploy to Staging') {
                                    steps {
                                        sh(script: "source /etc/profile; helm upgrade --set version=$VERSION_NUMBER -f service1-workflow/values." + list_projects[i] + "." + list_environments[j] + ".yaml " + list_projects[i] + "-" + list_environments[j] + "-service1-workflow ./service1-workflow")
                                    }
                                }
                                stage(list_projects[i] + list_environments[j] + ' Smoke Test') {
                                    steps {
                                        echo "Executing"
                                    }
                                }
                                stage(list_projects[i] + list_environments[j] + ' End to End Test') {
                                    steps {
                                        echo "Executing"
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }

    }
}