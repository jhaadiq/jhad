FROM jhaadiq/jhad:slim-buster

#clonning repo 
RUN git clone https://github.com/jhaadiq/jhad.git /root/JoKeRUB
#working directory 
 WORKDIR /root/JoKeRUB
 RUN apk add --update --no-cache p7zip
 # Install requirements
 RUN pip3 install --no-cache-dir -r requirements.txt
 ENV PATH="/home/JoKeRUB/bin:$PATH"
 CMD ["python3","-m","JoKeRUB"]
