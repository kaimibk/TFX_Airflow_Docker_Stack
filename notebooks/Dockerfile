FROM tensorflow/tensorflow:latest-gpu-py3-jupyter
LABEL maintainer="kahihikolo_kaimi@bah.com"


RUN apt-get update
RUN apt-get install ffmpeg libsm6 libxext6  -y

COPY ./requirements /requirements
RUN pip install -r /requirements/requirements.txt --no-cache-dir
# RUN pip install --upgrade tensorflow==2.4

RUN pip install jupyter_contrib_nbextensions && jupyter contrib nbextension install 


RUN jupyter nbextension install --py --symlink tensorflow_model_analysis
RUN jupyter nbextension enable --py tensorflow_model_analysis 

CMD ["bash", "-c", "source /etc/bash.bashrc && jupyter notebook --notebook-dir=/tf --ip 0.0.0.0 --no-browser --allow-root"]