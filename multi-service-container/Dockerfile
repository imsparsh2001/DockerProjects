FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y nginx apache2 supervisor && \
    # cleanup 
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Copy supervisord config
COPY supervisord.conf /etc/supervisor/supervisord.conf

EXPOSE 80 8080

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/supervisord.conf"]
