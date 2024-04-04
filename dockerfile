FROM debian

RUN apt-get -y update
 
RUN apt-get -y upgrade
 
# RUN apt-get install -y build-essential

RUN apt-get install python3 python3-pip python3-virtualenv -y
# RUN apt-get install libssl-dev zlib1g-dev gcc g++ make build-essential libssl-dev libffi-dev -y
RUN apt-get install python3-dev unixodbc-dev -y

RUN python3 --version

WORKDIR /usr/workspace
COPY requirements.txt ./
COPY tests ./

RUN virtualenv venv
RUN . venv/bin/activate

RUN pip install -r requirements.txt --break-system-packages

RUN pytest 

