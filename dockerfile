FROM node:20.11.1-bookworm-slim

COPY entrypoint.sh /entrypoint.sh
RUN apt update \
    apt install git
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]