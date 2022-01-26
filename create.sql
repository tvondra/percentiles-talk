-- https://nyc-tlc.s3.amazonaws.com/trip+data/fhvhv_tripdata_2021-01.csv

CREATE TABLE yellow_cabs (
    VendorID                   INT,
    tpep_pickup_datetime       TIMESTAMPTZ,
    tpep_dropoff_datetime      TIMESTAMPTZ,
    passenger_count            INT,
    trip_distance              DOUBLE PRECISION,
    RatecodeID                 INT,
    store_and_fwd_flag         TEXT,
    PULocationID               INT,
    DOLocationID               TEXT,
    payment_type               INT,
    fare_amount                DOUBLE PRECISION,
    extra                      DOUBLE PRECISION,
    mta_tax                    DOUBLE PRECISION,
    tip_amount                 DOUBLE PRECISION,
    tolls_amount               DOUBLE PRECISION,
    improvement_surcharge      DOUBLE PRECISION,
    total_amount               DOUBLE PRECISION,
    congestion_surcharge       DOUBLE PRECISION
);

COPY yellow_cabs FROM '/home/user/taxi/yellow_tripdata_2021-01.csv' WITH (FORMAT csv, HEADER true);
COPY yellow_cabs FROM '/home/user/taxi/yellow_tripdata_2021-02.csv' WITH (FORMAT csv, HEADER true);
COPY yellow_cabs FROM '/home/user/taxi/yellow_tripdata_2021-03.csv' WITH (FORMAT csv, HEADER true);
COPY yellow_cabs FROM '/home/user/taxi/yellow_tripdata_2021-04.csv' WITH (FORMAT csv, HEADER true);
COPY yellow_cabs FROM '/home/user/taxi/yellow_tripdata_2021-05.csv' WITH (FORMAT csv, HEADER true);
COPY yellow_cabs FROM '/home/user/taxi/yellow_tripdata_2021-06.csv' WITH (FORMAT csv, HEADER true);
COPY yellow_cabs FROM '/home/user/taxi/yellow_tripdata_2021-07.csv' WITH (FORMAT csv, HEADER true);
