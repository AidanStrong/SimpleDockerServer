FROM alpine:3.14

RUN echo whoami
# Python
RUN apk add python3
RUN apk add py3-pip


# Files
COPY web /home/web

# Start server
CMD python3 -m http.server -d /home/web 80

EXPOSE 80
