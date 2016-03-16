FROM registry.access.redhat.com/jboss-eap-6/eap64-openshift:latest
USER root
RUN yum --enablerepo='rhel-7-server-ose-3.0-rpms' install -y nss_wrapper && \
    yum clean all -y
RUN chown -R 185:185 /opt/eap
USER 185
