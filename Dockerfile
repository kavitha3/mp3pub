FROM python:3.6.3
WORKDIR /usr/src/app
COPY requirement.txt .
COPY classify.py .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
COPY . .
CMD ["python","classify.py","mnist", "ff"] 
