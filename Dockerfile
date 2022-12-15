FROM ubuntu:latest
COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip3 install -r requirements.txt\
RUN apt -y install python3-pip
COPY . /app
ENTRYPOINT [ "python3" ]
CMD ["hello.py" ]
EXPOSE 8080
