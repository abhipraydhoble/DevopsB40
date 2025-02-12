# upload artifacts to s3:

## pluggins required:
- stage view
- aws credentials
- maven intergration
- s3

## go to credentials -> add credentials-> select aws credentials-> add acess key & secret key

## go to tools-> maven-> save and apply

## install aws cli in ec2 instance

````
sudo apt update -y
sudo apt install unzip -y
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
````
## create pipeline

```groovy

pipeline {
    agent any
    
    tools {
        maven 'maven'
    }
    
    environment {
        S3_BUCKET = 'jenkins-artifact-store-49'
        AWS_REGION = 'ap-southeast-1'
    }

    stages {
        stage('pull') {
            steps {
                git branch: 'main', url: 'https://github.com/abhipraydhoble/Project-InsureMe.git'
            }
        }
        
        stage('build') {
            steps {
                sh 'mvn clean package'
            }
        }
        
        stage('Upload to S3') {
            steps {
                script {
                    def warFile = 'target/Insurance-0.0.1-SNAPSHOT.jar'
                    sh "aws s3 cp ${warFile} s3://${S3_BUCKET}/artifacts/ --region ${AWS_REGION}"
                }
            }
        }
    }
}

`````
