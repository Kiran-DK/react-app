node {

    def image
 
    stage 'Checkout'
        checkout scm

    stage 'Build'
        image = docker.build("react-app", "-f Dockerfiles/application .")

    stage 'Deploy'
        image.run('-p 80:3000')
 
}
