FROM centos:7
MAINTAINER kent72 <kenthuang72@gmail.com>
RUN echo "root:docker" | chpasswd 
#RUN apt-get update && apt-get install -y \ 
#     ca-certificates \ 
#     curl \ 
#     libappindicator3-1 \ 
#     --no-install-recommends \ 
#     && rm -rf /var/lib/apt/lists/* \ 
#     && curl -sSL https://github.com/kendou/lantern/raw/master/lantern-2.0.10_amd64.deb -o /tmp/lantern.deb \ 
#     && dpkg -i /tmp/lantern.deb \ 
#     && rm -rf /tmp/lantern* 
RUN yum install -y wget
RUN wget https://github.com/kendou/lantern/raw/master/lantern_linux_amd64 -O lantern
RUN chmod +x lantern
EXPOSE 8787
ENTRYPOINT [ "/lantern", "--addr", "0.0.0.0:8787" ]
