
FROM ubuntu:focal

ENTRYPOINT ["bash"]
LABEL maintainer "Felix Klement <fk@sec.uni-passau.de>"

RUN apt-get update && apt-get install -y \
    hashcat \
    vim

ADD uni_batavis.txt /