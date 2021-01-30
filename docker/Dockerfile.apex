FROM pytorch/pytorch:1.0-cuda10.0-cudnn7-devel
RUN pip install allennlp==0.8.1
RUN pip install scikit-learn==0.21
RUN git clone https://github.com/NVIDIA/apex.git
RUN cd apex && pip install -v --no-cache-dir --global-option="--cpp_ext" --global-option="--cuda_ext" .