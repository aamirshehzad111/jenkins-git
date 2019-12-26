#!/usr/bin/env groovy

node {
  def last_commit= sh(script: "git rev-parse --short HEAD", returnStdout: true).trim()
  stage 'Checkout'
  git 'https://github.com/aamirshehzad111/jenkins-git.git'
 
  stage 'Docker build'
  docker.build('demo')
 
  stage 'Docker push'
  sh "\$(aws ecr get-login --no-include-email --region us-east-1)"
  docker.withRegistry('https://020046395185.dkr.ecr.us-east-1.amazonaws.com/jenkins-project') {
    docker.image('demo').push("${last_commit}")
  }
}
