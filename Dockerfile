FROM jenkins/jenkins:lts-alpine
# FROM jenkins/jenkins:lts

USER root

RUN apk --no-cache add docker
RUN echo "udocker:x:114:neontribe,tobias" >> /etc/group
RUN addgroup jenkins udocker
# RUN apk --no-cache add python3
# RUN apk --no-cache add py-pip
# RUN apk --no-cache add gcc
# RUN apk --no-cache add python3-dev
# RUN apk --no-cache add g++
# RUN apk --no-cache add libgcc
# RUN apk --no-cache add libxml2-dev
# RUN apk --no-cache add libxslt-dev
# RUN pip install --upgrade pip

RUN chown -R jenkins:jenkins /var/jenkins_home
# RUN pip3 install pipenv

USER jenkins
