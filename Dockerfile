FROM python:3.10.13
RUN apt-get update && \       
    apt-get install -y \      
    build-essential \
    cmake \
    git \
    sudo \
    wget \
    vim
RUN pip install --upgrade pip                
COPY ./requirements.txt /requirements.txt    
RUN pip install -r /requirements.txt

# jupyter labインストール 
RUN python -m pip install jupyterlab        
WORKDIR /work

# bas shellを起動 
# CMD ["/bin/bash"]  