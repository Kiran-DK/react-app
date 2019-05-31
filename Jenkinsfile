node {

    def image
 
    stage('Checkout') 
    {
        checkout scm
    }

    stage('Build')
    {
        sh '''
            CONTID=$(docker ps -a | grep react-app | awk '{print $1}')
            if [ $CONTID != 0 ];                                       
            then
            docker rm -f $CONTID || true && docker rmi -f react-app || true
            fi
        '''
        image = docker.build("react-app", "-f Dockerfiles/application .")
    }

    stage('Deploy')
    {
        image.run('-p 80:3000')
    }
}
