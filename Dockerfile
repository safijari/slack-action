FROM debian:9.6-slim

LABEL "com.github.actions.name"="Post Slack message"
LABEL "com.github.actions.description"="Post Slack messages using your own bot."
LABEL "com.github.actions.icon"="hash"
LABEL "com.github.actions.color"="white"

LABEL version="1.0.0"
LABEL repository="http://github.com/pullreminders/slack-action"
LABEL homepage="http://github.com/pullreminders/slack-action"
LABEL maintainer="Abi Noda <abi@pullreminders.com>"

RUN apt-get update && apt-get install -y curl

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
