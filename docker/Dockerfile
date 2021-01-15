FROM nvidia/cuda:10.1-devel-ubuntu18.04
RUN apt update
RUN apt install build-essential -y
RUN apt install git -y 
RUN apt install python3 -y 
RUN apt-get -y install python3-pip
RUN pip3 install Cython
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
RUN pip3 install allennlp==0.8.1
RUN git clone https://github.com/NVIDIA/apex.git
RUN cd apex && pip3 install -v --no-cache-dir --global-option="--cpp_ext" --global-option="--cuda_ext" .