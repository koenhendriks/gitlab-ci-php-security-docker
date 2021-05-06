FROM alpine:latest

# Releases https://github.com/fabpot/local-php-security-checker/releases
ARG URL="https://github.com/fabpot/local-php-security-checker/releases/download/v1.0.0/local-php-security-checker_1.0.0_linux_amd64"

RUN apk add --no-cache wget

RUN wget -O local-php-security-checker $URL

RUN chmod +x ./local-php-security-checker

RUN mv ./local-php-security-checker /usr/local/bin/
