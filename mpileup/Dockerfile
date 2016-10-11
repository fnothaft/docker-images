FROM quay.io/ucsc_cgl/samtools:1.3--256539928ea162949d8a65ca5c79a72ef557ce7c

MAINTAINER Frank Austin Nothaft, fnothaft@alumni.stanford.edu

RUN apt-get update && \
    apt-get install -y \
      libncurses5-dev \
      libncursesw5-dev \
      build-essential \
      zlib1g-dev \
      wget

RUN wget https://github.com/samtools/bcftools/releases/download/1.3.1/bcftools-1.3.1.tar.bz2
RUN tar xvf bcftools-1.3.1.tar.bz -C /tmp
RUN cd /tmp/bcftools-1.3.1 && make install

RUN mkdir /opt/mpileup
COPY wrapper.sh /opt/mpileup

ENTRYPOINT ["sh", "/opt/mpileup/wrapper.sh"]
