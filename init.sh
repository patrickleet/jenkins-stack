echo "$JENKINS_USER" | docker secret create jenkins-user -
echo "$JENKINS_PASS" | docker secret create jenkins-pass -

docker network create --driver overlay jenkins

export SLACK_IP=$(sudo ping \
  -c 1 $SLACK_DOMAIN \
  | awk -F'[()]' '/PING/{print $2}')