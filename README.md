# Send notification to teams

This action is used to send a notification to Microsoft Teams.

## Usage

```yaml
- name: Send notification to Microsoft Teams
  uses: freenet-actions/notify-microsoft-teams
  with:
    webhook: URI of the webhook # should be stored as secret
    title: Title for the notification
    env: Name of the environment
    application: Name of the application
    version: Version of the application
```

## Local testing

You can test the notification script locally:

```shell
export GITHUB_ACTION_PATH=`pwd`
export WEBHOOK=...
export TITLE="🚀 Yeah!!"
export ENV=production
export APPLICATION="the-great-app"
export VERSION=42
export GITHUB_ACTOR=aabeling
./notify.sh
```
