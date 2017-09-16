echo "$GITHUB_USER" | docker secret create github-user -
echo "$GITHUB_TOKEN" | docker secret create github-token -