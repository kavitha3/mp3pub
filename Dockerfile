FROM python:3
WORKDIR /usr/src/app
COPY requirements.txt .
COPY classify.py .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
ENV DATASET = "mnist"
ENV TYPE = "ff"
CMD ["python","classify.py"]
COPY . .
