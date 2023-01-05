FROM clojure:tools-deps-focal@sha256:466f175d030925ac354d0a820615fb6c3169f76e5e05d9a0b92b9085ac0e8826

COPY . /usr/src/app
WORKDIR /usr/src/app

ARG COMMIT_SHA
ARG DOCKERFILE_PATH=Dockerfile

LABEL org.opencontainers.image.revision=$COMMIT_SHA \
  org.opencontainers.image.source=$DOCKERFILE_PATH

RUN ["clojure", "-Spath"]
CMD ["clojure", "-X:app"]
