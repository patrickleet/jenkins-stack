echo "$JENKINS_USER" | docker secret create jenkins-user -
echo "$JENKINS_PASS" | docker secret create jenkins-pass -

docker volume create --driver rexray jenkins
docker network create --driver overlay jenkins
