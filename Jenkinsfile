node {
 
    stage 'Checkout'
        checkout scm

    stage 'Build'
        sh "sudo docker build -f Dockerfiles/application -t react-app ."

    stage 'Deploy'
        sh "sudo docker run -d -p 80:3000 -t react-app"
}
