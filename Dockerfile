FROM python:3
ADD classify.py /
RUN pip install numpy
RUN pip install torch
RUN pip install torchvision
EXPOSE 80
CMD [ "python", "./classify.py" ]
