node {
 
    stage 'Build'
        sh "sudo docker build -t react-app ."

    stage 'Deploy'
        sh "sudo docker run -d -p 80:3000 -t react-app"
}
