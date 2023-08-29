FROM clojure:tools-deps-focal@sha256:a41be70c761e6d5f94250005c1456a9c72dee483a8bbd58509dfb2c7cf151f4d

COPY . /usr/src/app
WORKDIR /usr/src/app

ARG COMMIT_SHA
ARG DOCKERFILE_PATH=Dockerfile

LABEL org.opencontainers.image.revision=$COMMIT_SHA \
  org.opencontainers.image.source=$DOCKERFILE_PATH

RUN ["clojure", "-Spath"]
CMD ["clojure", "-X:app"]
