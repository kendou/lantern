FROM debian:sid 
MAINTAINER kent72 <kenthuang72@gmail.com>
RUN echo "root:docker" | chpasswd 
RUN apt-get update && apt-get install -y \ 
     ca-certificates \ 
     curl \ 
     libappindicator3-1 \ 
     --no-install-recommends \ 
     && rm -rf /var/lib/apt/lists/* \ 
     && curl -sSL https://raw.githubusercontent.com/getlantern/lantern-binaries/master/lantern-installer-64-bit.deb -o /tmp/lantern.deb \ 
     && dpkg -i /tmp/lantern.deb \ 
     && rm -rf /tmp/lantern* 
ENTRYPOINT [ "lantern" ]
