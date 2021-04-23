FROM ubuntu:18.04
 
#
# Identify the maintainer of an image
LABEL maintainer="sidheswar.ghosh@gmail.com"
 
# Update the image to the latest packages
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y python3

ADD main.py /home/main.py

CMD ["/home/main.py"]
ENTRYPOINT ["python3"]