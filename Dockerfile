FROM phusion/baseimage:latest
RUN apt-get update && apt-get -y install \
    tcl8.6 \
    tk8.6 \
    tcllib \
    libsqlite3-tcl \
    libtk-img
RUN mkdir -p /usr/src/
WORKDIR /usr/src/
COPY . /usr/src/
ENTRYPOINT ["/usr/src/drakon_editor.tcl"]
