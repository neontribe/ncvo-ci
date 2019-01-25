FROM jenkins/jenkins:lts-alpine
# FROM jenkins/jenkins:lts

USER root

RUN apk --no-cache add python3
RUN apk --no-cache add py-pip
RUN apk --no-cache add gcc
RUN apk --no-cache add python3-dev
RUN apk --no-cache add g++
RUN apk --no-cache add libgcc
RUN apk --no-cache add libxml2-dev
RUN apk --no-cache add libxslt-dev
RUN pip install --upgrade pip
# RUN python3 -c 'import sys; f = open("/usr/lib/python3.6/site-packages/_manylinux.py", "w"); f.write("manylinux1_compatible = True"); f.close()'

RUN chown -R jenkins:jenkins /var/jenkins_home
RUN pip3 install pipenv

USER jenkins

# RUN chown -R jenkins:jenkins /opt
# RUN pip3 install --user pipenv
# RUN pipenv install termcolor
# RUN cp .env.example .env
# RUN pipenv install --dev
# RUN pipenv install python-dotenv
# RUN pipenv install mypy_extensions

