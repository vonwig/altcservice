FROM clojure:tools-deps-focal

COPY . /usr/src/app
WORKDIR /usr/src/app

ARG COMMIT_SHA
ARG DOCKERFILE_PATH=Dockerfile

LABEL org.opencontainers.image.revision=$COMMIT_SHA \
  org.opencontainers.image.source=$DOCKERFILE_PATH

RUN ["clojure", "-Spath"]
CMD ["clojure", "-X:app"]
