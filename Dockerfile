FROM python:3.8-alpine
WORKDIR /home/app
COPY helloapp.py /home/app
COPY ./templates/ /home/app/templates
COPY requirements.txt /home/app
RUN pip install -r requirements.txt
CMD ["python","helloapp.py"]