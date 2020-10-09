ARG VICTORIA_VERSION="v1.36.2"

FROM alpine
ARG VICTORIA_VERSION
RUN cd /tmp && \
  wget https://github.com/VictoriaMetrics/VictoriaMetrics/releases/download/${VICTORIA_VERSION}/victoria-metrics-${VICTORIA_VERSION}-cluster.tar.gz && \
  tar zxf victoria-metrics-${VICTORIA_VERSION}-cluster.tar.gz && \
  rm victoria-metrics-${VICTORIA_VERSION}-cluster.tar.gz

RUN mkdir /victoria-metrics-data
RUN mv /tmp/vminsert-prod /bin/vminsert-prod
RUN mv /tmp/vmselect-prod /bin/vmselect-prod
RUN mv /tmp/vmstorage-prod /bin/vmstorage-prod