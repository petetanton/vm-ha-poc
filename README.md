# VM Cluster Test

## Run
`docker-compose up`

## Insert
Using InfluxDB line protocol:  
`http://127.0.0.1:8480/insert/<account-id>/influx`  
Or use the telegraf config  
`telegraf --config telegraf.conf`

## Select
Using PromQL:  
`http://localhost:8481/select/<account-id>/prometheus`