pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
            }
        }
        stage('Build') {
            steps {
                // Get some code from a GitHub repository
                git branch: 'main',
                    url: 'https://github.com/arjunkalidoss/learn.git'
            }
        }
        stage('Execute Ansible') {
            steps {
                // Execute Ansible playbook
                ansible-playbook '/var/lib/jenkins/workspace/pipe/Ansible/playbook/verify-connection.yml' -vv
            }
        }
    }

}
