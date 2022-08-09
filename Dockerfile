FROM alpine:latest
WORKDIR /app
# Releases https://github.com/fabpot/local-php-security-checker/releases
ARG URL="https://github.com/fabpot/local-php-security-checker/releases/download/v2.0.4/local-php-security-checker_2.0.4_linux_amd64"

RUN apk add --no-cache wget

RUN wget -O local-php-security-checker $URL

RUN chmod +x ./local-php-security-checker

RUN mv ./local-php-security-checker /usr/local/bin/
