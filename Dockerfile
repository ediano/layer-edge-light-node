FROM golang:1.24.3-bookworm

RUN apt update -y \
  && apt upgrade -y \
  && apt install git

RUN curl https://sh.rustup.rs -sSf | sh -s -- -y --default-toolchain stable

WORKDIR /usr/src/app
COPY . ./

EXPOSE 3001
EXPOSE 8080

CMD ["tail", "-f", "/dev/null"]