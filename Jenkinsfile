pipeline {
	agent {
	    docker {
	        image 'maven:3-alpine'
	        label 'my-defined-label'
	        args  '-v /tmp:/tmp'
    	}
	}
    stages {
        stage('Build') {
            steps {
                sh 'docker image build -t dockercraze/k8s-from-scratch-nodejs .'
            }
        }
    }
}
