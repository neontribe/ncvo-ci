FROM jenkins/jenkins:lts

USER root
RUN echo "deb http://ftp.de.debian.org/debian testing main" >> /etc/apt/sources.list
RUN echo 'APT::Default-Release "stable";' | tee -a /etc/apt/apt.conf.d/00local
RUN apt update && apt upgrade -y
RUN apt-get -t testing install -y python3.6
RUN apt install pip3
RUN chown -R jenkins:jenkins /opt
RUN pip3 install --user pipenv
# RUN update-alternatives --install /usr/bin/python python /usr/bin/python3.6

USER jenkins

# RUN chown -R jenkins:jenkins /opt
# RUN pip3 install --user pipenv
# RUN pipenv install termcolor
# RUN cp .env.example .env
# RUN pipenv install --dev
# RUN pipenv install python-dotenv
# RUN pipenv install mypy_extensions

# 91566c6a7eb844e482ee252c9501d744
