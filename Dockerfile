FROM clojure:tools-deps-focal

COPY . /usr/src/app
WORKDIR /usr/src/app

ARG COMMIT_SHA
ARG DOCKERFILE_PATH=Dockerfile

RUN ["clojure", "-Spath"]
CMD ["clojure", "-X:app"]
