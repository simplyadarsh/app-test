pipeline{
    agent any
    tools{
        maven 'maven'
    }
    stages{
        stage('Checkout'){
            steps{
                git branch: 'main', url: 'https://github.com/simplyadarsh/app-test.git'
            }
        }
        stage('Compile'){
            steps{
                sh 'mvn compile' 
            }
        }        
        stage('Test'){
            steps{
                sh 'mvn test'
            }
        }
        stage('Build'){
            steps{
                sh 'mvn clean package'
            }
        }
        stage('Deploy'){
            steps{
                sh 'cd ./target && java -jar *.jar'
            }
        }
    }
}