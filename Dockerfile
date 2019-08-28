FROM debian:latest
LABEL maintainer "timangpopi <timangpopi@gmail.com>"

RUN apt-get update && apt-get install -y \
	gcc \
	libc6-dev \
	git \
	g++ \
	gperf \
	bison \
	flex \
	texinfo \
	help2man \
	make \
	libncurses5-dev \
	autoconf \
	automake \
	libtool \
	libtool-bin \
	gawk \
	wget \
	bzip2 \
	xz-utils \
	unzip \
	patch \
	python3 \
	libstdc++6 \
	subversion \
	curl \
	rsync \
	bc \
	libssl-dev \
	zip \
	tar \
	zstd \
	libgomp1-* \
	cmake \
	autogen \
	autotools-dev \
	shtool \
	python \
	m4 \
	zlib1g-dev
	
RUN apt-get upgrade -y
ENV USE_CCACHE=1
ENV CCACHE_COMPRESSION=1
ENV TZ=Asia/Jakarta
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
