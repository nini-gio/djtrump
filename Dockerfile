FROM thinkwhere/gdal-python


ENV PYTHONUNBUFFERED 1 
RUN mkdir /code
WORKDIR /code
COPY . /code/
RUN pip install -r requirements.txt
EXPOSE 8000
