node {
 
    stage 'Checkout'
        checkout scm

    stage 'Build'
        sh "docker build -t react-app ."

    stage 'Deploy'
        sh "docker run -d -p 80:3000 -t react-app"
}
