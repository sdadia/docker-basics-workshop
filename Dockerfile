FROM ubuntu

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y python3 python3-dev python3-pip

RUN pip3 install jupyter numpy

ENTRYPOINT ["jupyter", "notebook", "--ip=0.0.0.0" , "--allow-root", "--port=8889"]