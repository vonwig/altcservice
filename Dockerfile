FROM clojure:tools-deps-focal@sha256:841204b148d899c50f63a6e3bd1e12ce0a149091ea560d4cacfc467a4db9b881

COPY . /usr/src/app
WORKDIR /usr/src/app

ARG COMMIT_SHA
ARG DOCKERFILE_PATH=Dockerfile

LABEL org.opencontainers.image.revision=$COMMIT_SHA \
  org.opencontainers.image.source=$DOCKERFILE_PATH

RUN ["clojure", "-Spath"]
CMD ["clojure", "-X:app"]
