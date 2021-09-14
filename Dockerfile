FROM python:3.7

RUN apt-get update \
    && apt-get install cmake build-essential pkg-config libgoogle-perftools-dev -y \
    && pip3 install torch==1.9.0+cu111 torchvision==0.10.0+cu111 torchaudio==0.9.0 \
    -f https://download.pytorch.org/whl/torch_stable.html \
    && pip3 install tensorflow==1.15 \
    && pip3 install pandas transformers[ja] datasets sentencepiece sklearn