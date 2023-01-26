FROM ubuntu:20.04
RUN apt update && apt install -y sbcl
ENV DEBIAN_FRONTEND=noninteracrive

RUN apt-get install -y python3
WORKDIR /usr/src

#copy my script to the working directory
COPY assignment1.py ./

#Run the script for Hello World
CMD ["python3", "./assignment1.py"]