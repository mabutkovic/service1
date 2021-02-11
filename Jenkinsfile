def list_projects = ["p1", "p2"]
def list_environments = ["staging", "prod"]
pipeline {
    agent any
    environment {
        VERSION_NUMBER = sh(script: 'cat version.txt ', returnStdout: true).trim()
    }
    stages {
        
        stage('Deployment Stage') {

            steps {
                script {
                    for (int i = 0; i < list_projects.size(); i++) {
                        for (int j = 0; j < list_environments.size(); j++) {

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