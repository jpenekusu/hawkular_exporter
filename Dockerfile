FROM scratch
LABEL MAINTAINER="Robert Tindell <tim.tindell@gmail.com>"
ENV HAWKULAR_URL=https://si-mycontainers-metrics.edf.fr/hawkular/metrics"
ENV HAWKULAR_TENANT=eac-exsims-metiers-grp-hp

EXPOSE 9189

USER 1001
# Copy hawkular_exporter
ADD hawkular_exporter /

CMD ["/hawkular_exporter"]

