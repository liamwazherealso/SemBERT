FROM anibali/pytorch:1.4.0-cuda10.1
RUN sudo apt update
RUN sudo apt install build-essential -y
RUN git clone https://github.com/liamwazherealso/SemBERT
RUN cd SemBERT && git fetch && git checkout docker && conda env create --file environment.yml
RUN pip install allennlp==0.8.1
RUN conda init bash