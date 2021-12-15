FROM confluentinc/cp-kafka:latest

USER root

RUN chown -R appuser:appuser /etc/kafka/
RUN chown -R appuser:appuser /usr/local/bin/dub
RUN chown -R appuser:appuser /var/lib/kafka

USER appuser
