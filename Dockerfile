FROM python:3.9.1

ENV USER=root
ENV PASSWORD=root
ENV PORT=5432
ENV DB=ny_taxi
ENV TB=yellow_taxi_trips
ENV URL=https://d37ci6vzurychx.cloudfront.net/trip-data/yellow_tripdata_2024-01.parquet

RUN apt-get install wget
RUN pip install pandas sqlalchemy psycopg2 pyarrow

WORKDIR /app
COPY data_loading_parquet.py data_loading_parquet.py 

ENTRYPOINT [ "python", "data_loading_parquet.py" ]