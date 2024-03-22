FROM node:20.11.1-bookworm-slim

COPY entrypoint.sh /entrypoint.sh
RUN apt-get update \
    apt-get install git
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]