node {
 
    stage 'Checkout'
        checkout scm

    stage 'Build'
        docker.build("react-app", "-f Dockerfiles/application .")

    stage 'Deploy'
        docker.image('react-app:latest').withRun('-p 80:3000') {}
}
