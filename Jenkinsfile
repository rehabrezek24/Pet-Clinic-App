pipeline {

    agent {
    label 'linux'
   }

    stages{
        stage('Hello') {
            steps {
                script {
                    echo "Running on agent: ${env.NODE_NAME}"
                    sh 'echo Hostname: $(hostname)'
                }

            }
        }
        stage('Build') {
            steps {
                echo 'build by maven'
            }
        }

        stage('Echo Branch') {
            steps {
                script {
                    echo "Current branch: ${env.GIT_BRANCH}"
                    echo "this is the second branch"
                }
            }
        }
    }
}
