FROM uselagoon/node-16-builder:latest as builder
COPY . /app/
RUN yarn

EXPOSE 3000

CMD ["/app/lagoon/start.sh"]
