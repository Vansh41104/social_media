docker build -t $JOB_NAME:$BUILD_ID .

docker tag $JOB_NAME:$BUILD_ID vansh41104/$JOB_NAME:$BUILD_ID

docker tag $JOB_NAME:$BUILD_ID vansh41104/$JOB_NAME:latest

docker push vansh41104/$JOB_NAME:$BUILD_ID

docker push vansh41104/$JOB_NAME:latest

docker rmi -f $JOB_NAME:$BUILD_ID vansh41104/$JOB_NAME:$BUILD_ID vansh41104/$JOB_NAME:latest
