node {
  
 
    
  
  def last_commit= sh(script: "git rev-parse --short HEAD", returnStdout: true).trim()
  stage 'Checkout'
  git 'https://github.com/aamirshehzad111/jenkins-git'
  
  properties([
      parameters(
         [string(defaultValue: 'cluster-one', description: 'cluster name', name: 'cluster')] 
      )

  ]) 
  
  stage('Deploy'){
   
   withAWS(region:'us-east-1') {
        def outputs = cfnUpdate(stack: "${cluster}-stack",params:['ClusterName': "${cluster}"], url:'https://aamir-learning.s3.amazonaws.com/Ecs_jenkin_cf/ecs_cluster.yaml')
         
    }
  }

}
