FROM nginx:latest

RUN apt update && \
    apt install -y iproute2 && \
    apt clean

COPY index.html /usr/share/nginx/html/index.html
COPY alvo.jpg /usr/share/nginx/html/alvo.jpg