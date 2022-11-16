FROM python
WORKDIR /app 
COPY . .
RUN "apt install pip"
RUN "pip3 install -r requirments.txt"
CMD [ "python" ,"http_e.py"]
