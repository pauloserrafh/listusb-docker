FROM debian:buster

RUN apt-get update \
	&& apt-get upgrade \
	&& apt-get install libusb-1.0-0 -y \
	&& apt-get install wget -y

RUN cd /home \
	&& wget https://github.com/pauloserrafh/listusb-pkg/raw/master/listusb_1.0-1_amd64.deb \
	&& dpkg -i listusb_1.0-1_amd64.deb

RUN listusb > /home/output.txt

CMD tail -f /dev/null