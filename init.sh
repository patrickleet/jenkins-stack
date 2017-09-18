echo "$JENKINS_USER" | docker secret create jenkins-user -
echo "$JENKINS_PASS" | docker secret create jenkins-pass -

docker network create --driver overlay jenkins
