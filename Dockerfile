FROM rabbitmq:3.13-management-alpine

# Bake configuration and topology definitions directly into the image
COPY config/rabbitmq/rabbitmq.conf /etc/rabbitmq/rabbitmq.conf
COPY config/rabbitmq/definitions.json /etc/rabbitmq/definitions.json

# Set appropriate ownership for RabbitMQ runtime user
RUN chown rabbitmq:rabbitmq /etc/rabbitmq/rabbitmq.conf /etc/rabbitmq/definitions.json

EXPOSE 5672 15672