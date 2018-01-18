export SLACK_IP=$(sudo ping \
  -c 1 $SLACK_SUBDOMAIN.slack.com \
  | awk -F'[()]' '/PING/{print $2}')