FROM gcr.io/google.com/cloudsdktool/google-cloud-cli:alpine
LABEL org.opencontainers.image.source https://github.com/kameshsampath/drone-gcloud-auth
LABEL org.opencontainers.image.authors="Kamesh Sampath<kamesh.sampath@hotmail.com>"

LABEL description="A Drone plugin to initialize gcloud authentication"

RUN apk -Uuv add curl ca-certificates

ADD run.sh /bin/
RUN chmod +x /bin/run.sh

CMD ["/bin/run.sh"]