#FROM mono:latest
FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Jerusalem 

RUN apt-get update \
	&& apt-get install -y \
		ca-certificates \
		gnupg \
		unzip \
		wget \
	&& apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF \
	&& echo "deb https://download.mono-project.com/repo/ubuntu stable-focal main" | tee /etc/apt/sources.list.d/mono-official-stable.list \
	&& apt-get update \
	&& apt-get install -y mono-complete

WORKDIR /home/root/mission_planner/

RUN wget https://firmware.ardupilot.org/Tools/MissionPlanner/MissionPlanner-latest.zip -O temp.zip \
	&& unzip temp.zip \
	&& rm temp.zip 

ENTRYPOINT ["mono", "/home/root/mission_planner/MissionPlanner.exe"]
