FROM clojure:tools-deps-focal

COPY . /usr/src/app
WORKDIR /usr/src/app

RUN ["clojure", "-Spath"]
CMD ["clojure", "-X:app"]
