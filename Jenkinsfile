pipeline{
    agent any
    environment{
        JAR_FILE = 'target/*.jar'
    }
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
                sh 'mvn clean package -DskipTests'
                archiveArtifacts artifacts: 'target/*.jar', allowEmptyArchive: false 
            }
        }
        stage('Deploy'){
            steps{
                sh 'java -jar ${JAR_FILE}'
            }
        }
    }
}