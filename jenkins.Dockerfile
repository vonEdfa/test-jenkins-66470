# We've switched off lts due to:
# https://issues.jenkins.io/browse/JENKINS-66470
# Feel free to swicch back to lts after init for fetching updates.
FROM jenkins/jenkins:lts-jdk11

# Jenkins install
ENV PLUGINS_FORCE_UPGRADE true
ENV TRY_UPGRADE_IF_NO_MARKER true
ENV JAVA_OPTS "-Djenkins.install.runSetupWizard=false"
ENV CASC_JENKINS_CONFIG "${JENKINS_HOME}/casc/jenkins.yaml"

COPY --chown=jenkins:jenkins ./jenkins.yaml /usr/share/jenkins/ref/casc/jenkins.yaml

COPY --chown=jenkins:jenkins ./plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt
