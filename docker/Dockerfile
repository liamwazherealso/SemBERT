FROM nvidia/cuda:10.0-devel-ubuntu16.04
RUN apt-get remove --auto-remove python3.5
RUN apt update
RUN apt install software-properties-common -y
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt update
RUN apt install curl
RUN apt install python3.7 -y
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python3.7 get-pip.py
RUN apt install wget
RUN wget https://download.pytorch.org/whl/cu100/torch-1.0.0-cp37-cp37m-linux_x86_64.whl
RUN pip install torch-1.0.0-cp37-cp37m-linux_x86_64.whl
RUN apt install build-essential -y
RUN apt install git -y 
RUN pip install Cython
RUN apt install python3.7-dev -y
RUN pip install allennlp==0.8.1
RUN pip install scikit-learn==0.21
RUN git clone https://github.com/NVIDIA/apex.git
# RUN cd apex && pip install -v --no-cache-dir --global-option="--cpp_ext" --global-option="--cuda_ext" .