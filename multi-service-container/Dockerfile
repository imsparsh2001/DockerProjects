FROM debian:bullseye
RUN apt-get update && apt-get install -y nginx apache2 && rm -rf /var/lib/apt/lists/*
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
EXPOSE 80 8080
CMD ["/entrypoint.sh"]
