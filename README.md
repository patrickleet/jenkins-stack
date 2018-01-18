# jenkins stack

To deploy jenkins stack, `ssh` into your cluster.

## Jenkins Master

```
git clone YOUR_FORK/jenkins-stack.git
cd jenkins-stack

export JENKINS_USER=...
export JENKINS_PASS=...
export SLACK_SUBDOMAIN=yourslack

sh init.sh
sh deploy.sh
```

## Jenkins Agents

### With GitHub Auth

After configuring Jenkins with GitHub auth:

```
export GITHUB_USER=org_owner_github_name
export GITHUB_TOKEN=org_owner_personal_access_token

sh github-auth.sh
sh create-agents-github.sh
```

### With Jenkins Auth

```
sh create-agents.sh
```

---
To learn more about this stack, visit https://www.microservicedriven.com