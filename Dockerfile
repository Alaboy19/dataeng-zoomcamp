FROM python:3.9.1

RUN apt-get install wget
RUN pip install pandas sqlalchemy psycopg2 pyarrow

WORKDIR /app
COPY data_loading_parquet.py data_loading_parquet.py 

ENTRYPOINT [ "python", "data_loading_parquet.py" ]